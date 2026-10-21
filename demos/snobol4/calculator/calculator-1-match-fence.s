                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/calculator/calculator-1-match-fence.sno"
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
                        .long            32, 1
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
                        .long            48, 1
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
                        .long            160, 0
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
                        lea              rax, [rip + .Lmatch_alternate_α_37_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n31_match_lit_α
.Lmatch_alternate_α_37_21:
                        lea              rax, [rip + .Lmatch_alternate_α_37_22]
                        mov              qword ptr [rbp + -96], rax;          jmp   n29_match_lit_α
.Lmatch_alternate_α_37_22:
                        lea              rax, [rip + .Lmatch_alternate_α_37_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n28_match_defer_α
.Lmatch_alternate_γ_27_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_37_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_27_as
.Lmatch_alternate_γ_27_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_37_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_27_as
.Lmatch_alternate_γ_27_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_37_42]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_27_as
.Lmatch_alternate_α_37_40:
                                                                              jmp   n32_match_defer_β
.Lmatch_alternate_α_37_41:
                                                                              jmp   n30_match_defer_β
.Lmatch_alternate_α_37_42:
                                                                              jmp   n28_match_defer_β
.Lmatch_alternate_γ_27_as:
                                                                              jmp   .Lmatch_fence1_γ_26_as
n27_match_alternate_β:  mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_27_af:
.Lmatch_alternate_ω_27_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_37_19:
                                                                              jmp   .Lmatch_fence1_ω_26_af
                        .size            n27_match_alternate_bx, .-n27_match_alternate_bx
                        .type            n28_match_defer_bx, @function
n28_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_38_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_38_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_38_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_38_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_38_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_38_18
.Lmatch_defer_α_38_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp3_21:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_38_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_38_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_38_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_38_16:
.Lmatch_defer_α_38_18:  test             rax, rax;                            jz    .Lmatch_defer_α_38_0
.Lmatch_defer_α_38_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_38_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_38_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_38_4:
.Lgcsite_.LTp3_19:                                                            jmp   .Lmatch_alternate_γ_27_s2
.Lmatch_defer_α_38_5:
.Lgcsite_.LTp3_18:      cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
.Lmatch_defer_α_38_0:   sub              rsp, 32
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
.Lgcsite_.LTp3_17:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lmatch_defer_α_38_49:  cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_38_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
.Lmatch_defer_α_38_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_38_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_27_s2
.Lmatch_defer_α_38_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_27_af
n28_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_38_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_38_12
                                                                              jmp   rax
.Lmatch_defer_β_38_12:                                                        jmp   qword ptr [rsp]
                        .size            n28_match_defer_bx, .-n28_match_defer_bx
                        .type            n29_match_lit_bx, @function
n29_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_27_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_27_af
                        add              r14d, 1;                             jmp   n30_match_defer_α
n29_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_27_af
                        .size            n29_match_lit_bx, .-n29_match_lit_bx
                        .type            n30_match_defer_bx, @function
n30_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_41_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_44:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_43:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_41_10
.Lmatch_defer_α_41_9:   xor              eax, eax
.Lmatch_defer_α_41_10:  test             rax, rax;                            jz    .Lmatch_defer_α_41_0
.Lmatch_defer_α_41_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_41_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_41_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_41_4:
.Lgcsite_.LTp3_42:                                                            jmp   .Lmatch_alternate_γ_27_s1
.Lmatch_defer_α_41_5:
.Lgcsite_.LTp3_41:      cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        add              rsp, 16;                             jmp   n29_match_lit_β
.Lmatch_defer_α_41_0:   sub              rsp, 32
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
.Lgcsite_.LTp3_40:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_41_6
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_39:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_41_6:  push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp3_38:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_41_2:   test             rax, rax;                            je    .Lmatch_defer_α_41_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_41_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_41_61
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
.Lgcsite_.LTp3_37:      add              rsp, 48
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
.Lgcsite_.LTp3_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_47
.Lmatch_defer_α_41_42:
.Lgcsite_.LTp3_35:      add              rsp, 16
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
.Lgcsite_.LTp3_34:      add              rsp, 16
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
.Lgcsite_.LTp3_33:      add              rsp, 0
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
.Lgcsite_.LTp3_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_41_47
.Lmatch_defer_α_41_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_41_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_41_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_41_2
.Lmatch_defer_α_41_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_29:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp3_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_41_2
.Lmatch_defer_α_41_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_41_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_41_62:
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
.Lgcsite_.LTp3_26:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_41_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_41_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_41_2
.Lmatch_defer_α_41_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_41_48
.Lmatch_defer_α_41_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_41_5
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_41_5:  add              rsp, 144
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
.Lgcsite_.LTp3_22:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_41_49:  cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_41_999
                        add              rsp, 16;                             jmp   n29_match_lit_β
.Lmatch_defer_α_41_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_41_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_27_s1
.Lmatch_defer_α_41_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n29_match_lit_β
n30_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_41_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_41_12
                                                                              jmp   rax
.Lmatch_defer_β_41_12:                                                        jmp   qword ptr [rsp]
                        .size            n30_match_defer_bx, .-n30_match_defer_bx
                        .type            n31_match_lit_bx, @function
n31_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_27_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   .Lmatch_alternate_ω_27_af
                        add              r14d, 1;                             jmp   n32_match_defer_α
n31_match_lit_β:        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_27_af
                        .size            n31_match_lit_bx, .-n31_match_lit_bx
                        .type            n32_match_defer_bx, @function
n32_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_44_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_44_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp3_67:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp3_66:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11912];         jmp   .Lmatch_defer_α_44_10
.Lmatch_defer_α_44_9:   xor              eax, eax
.Lmatch_defer_α_44_10:  test             rax, rax;                            jz    .Lmatch_defer_α_44_0
.Lmatch_defer_α_44_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_44_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_44_4:
.Lgcsite_.LTp3_65:                                                            jmp   .Lmatch_alternate_γ_27_s0
.Lmatch_defer_α_44_5:
.Lgcsite_.LTp3_64:      cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        add              rsp, 16;                             jmp   n31_match_lit_β
.Lmatch_defer_α_44_0:   sub              rsp, 32
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
.Lgcsite_.LTp3_63:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_44_8
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp3_62:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_44_8:  push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_61:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_44_2:   test             rax, rax;                            je    .Lmatch_defer_α_44_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_44_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_44_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_44_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_44_141
                        lea              rcx, [rip + .Lmatch_defer_α_44_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_42]
                        lea              rdx, [rip + .Lmatch_defer_α_44_43];  jmp   rax
.Lmatch_defer_α_44_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_44_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_44_44:
.Lgcsite_.LTp3_60:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_45:
.Lgcsite_.LTp3_59:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_42:
.Lgcsite_.LTp3_58:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_43:
.Lgcsite_.LTp3_57:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_141: lea              rcx, [rip + .Lmatch_defer_α_44_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_44_142]
                        lea              rdx, [rip + .Lmatch_defer_α_44_143]; jmp   rax
.Lmatch_defer_α_44_142:
.Lgcsite_.LTp3_56:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_46
.Lmatch_defer_α_44_143:
.Lgcsite_.LTp3_55:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_44_47
.Lmatch_defer_α_44_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp3_54:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_53:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_44_2
.Lmatch_defer_α_44_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp3_52:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_51:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_44_2
.Lmatch_defer_α_44_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_44_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_44_62:
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
.Lgcsite_.LTp3_49:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_44_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_44_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp3_48:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_44_2
.Lmatch_defer_α_44_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_44_48
.Lmatch_defer_α_44_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp3_47:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_44_7
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp3_46:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_44_7:  add              rsp, 144
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
.Lgcsite_.LTp3_45:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_44_49:  cmp              r14d, -2;                            je    n33_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n33_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_44_999
                        add              rsp, 16;                             jmp   n31_match_lit_β
.Lmatch_defer_α_44_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_44_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_27_s0
.Lmatch_defer_α_44_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n31_match_lit_β
n32_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_44_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_44_12
                                                                              jmp   rax
.Lmatch_defer_β_44_12:                                                        jmp   qword ptr [rsp]
                        .size            n32_match_defer_bx, .-n32_match_defer_bx
                        .type            n33_match_abort_bx, @function
n33_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_abort_α:      mov              r14d, -2;                            jmp   .LTp3_ω
n33_match_abort_β:      mov              r14d, -2;                            jmp   .LTp3_ω
                        .size            n33_match_abort_bx, .-n33_match_abort_bx
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
                        .long            160, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp4_4:
.LTp4:
.LTp4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 168
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp4 qword ptr [rbp + -160]
                        movups           xmmword ptr [rbp + -152], xmm0
                        movups           xmmword ptr [rbp + -136], xmm0
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
                        .type            n46_match_fence1_bx, @function
n46_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_match_fence1_α:     mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d
                        sub              rsp, 0;                              jmp   n47_match_alternate_α
.Lmatch_fence1_γ_46_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp4_γ
.Lmatch_fence1_γ_46_af:
.Lmatch_fence1_ω_46_af: add              rsp, 0
n46_match_fence1_β:     mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60];         jmp   .LTp4_ω
                        .size            n46_match_fence1_bx, .-n46_match_fence1_bx
                        .type            n47_match_alternate_bx, @function
n47_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_match_alternate_α:  mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_59_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n52_match_defer_α
.Lmatch_alternate_α_59_21:
                        lea              rax, [rip + .Lmatch_alternate_α_59_22]
                        mov              qword ptr [rbp + -96], rax;          jmp   n49_match_defer_α
.Lmatch_alternate_α_59_22:
                        lea              rax, [rip + .Lmatch_alternate_α_59_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n48_match_defer_α
.Lmatch_alternate_γ_47_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_59_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_47_as
.Lmatch_alternate_γ_47_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_59_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_47_as
.Lmatch_alternate_γ_47_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_59_42]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_47_as
.Lmatch_alternate_α_59_40:
                                                                              jmp   n54_match_defer_β
.Lmatch_alternate_α_59_41:
                                                                              jmp   n51_match_defer_β
.Lmatch_alternate_α_59_42:
                                                                              jmp   n48_match_defer_β
.Lmatch_alternate_γ_47_as:
                                                                              jmp   .Lmatch_fence1_γ_46_as
n47_match_alternate_β:  mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_47_af:
.Lmatch_alternate_ω_47_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_59_19:
                                                                              jmp   .Lmatch_fence1_ω_46_af
                        .size            n47_match_alternate_bx, .-n47_match_alternate_bx
                        .type            n48_match_defer_bx, @function
n48_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_60_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_60_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_60_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_60_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_60_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_60_18
.Lmatch_defer_α_60_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 2                               # i
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
                        test             rax, rax;                            je    .Lmatch_defer_α_60_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_60_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_20:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_19:                                                            jmp   .Lmatch_alternate_γ_47_s2
.Lmatch_defer_α_60_5:
.Lgcsite_.LTp4_18:      cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
.Lmatch_defer_α_60_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_51:  lea              rdi, [rsp + 0]
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
.Lgcsite_.LTp4_15:      add              rsp, 48
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
.Lgcsite_.LTp4_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_42:
.Lgcsite_.LTp4_13:      add              rsp, 16
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
.Lgcsite_.LTp4_12:      add              rsp, 16
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
.Lgcsite_.LTp4_11:      add              rsp, 0
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
.Lgcsite_.LTp4_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_60_47
.Lmatch_defer_α_60_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_60_2
.Lmatch_defer_α_60_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_6:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_60_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_60_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_3:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_60_9
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_60_9:  add              rsp, 144
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
.Lmatch_defer_α_60_49:  cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_60_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
.Lmatch_defer_α_60_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_60_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_47_s2
.Lmatch_defer_α_60_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
n48_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_60_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_60_12
                                                                              jmp   rax
.Lmatch_defer_β_60_12:                                                        jmp   qword ptr [rsp]
                        .size            n48_match_defer_bx, .-n48_match_defer_bx
                        .type            n49_match_defer_bx, @function
n49_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_61_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_61_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_42:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_41:                                                            jmp   n50_match_lit_α
.Lmatch_defer_α_61_5:
.Lgcsite_.LTp4_40:      cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_51:  lea              rdi, [rsp + 0]
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
.Lgcsite_.LTp4_37:      add              rsp, 48
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
.Lgcsite_.LTp4_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_42:
.Lgcsite_.LTp4_35:      add              rsp, 16
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
.Lgcsite_.LTp4_34:      add              rsp, 16
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
.Lgcsite_.LTp4_33:      add              rsp, 0
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
.Lgcsite_.LTp4_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_61_47
.Lmatch_defer_α_61_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_61_2
.Lmatch_defer_α_61_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_28:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_61_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_61_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_25:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp4_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_61_10
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_61_10: add              rsp, 144
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
.Lmatch_defer_α_61_49:  cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_61_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
.Lmatch_defer_α_61_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_61_6]
                        push             rcx
                        push             rax;                                 jmp   n50_match_lit_α
.Lmatch_defer_α_61_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
n49_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_61_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_61_12
                                                                              jmp   rax
.Lmatch_defer_β_61_12:                                                        jmp   qword ptr [rsp]
                        .size            n49_match_defer_bx, .-n49_match_defer_bx
                        .type            n50_match_lit_bx, @function
n50_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n49_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n49_match_defer_β
                        add              r14d, 1;                             jmp   n51_match_defer_α
n50_match_lit_β:        sub              r14d, 1;                             jmp   n49_match_defer_β
                        .size            n50_match_lit_bx, .-n50_match_lit_bx
                        .type            n51_match_defer_bx, @function
n51_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_64_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_64_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp4_66:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp4_65:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11928];         jmp   .Lmatch_defer_α_64_10
.Lmatch_defer_α_64_9:   xor              eax, eax
.Lmatch_defer_α_64_10:  test             rax, rax;                            jz    .Lmatch_defer_α_64_0
.Lmatch_defer_α_64_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_64_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_64_4:
.Lgcsite_.LTp4_64:                                                            jmp   .Lmatch_alternate_γ_47_s1
.Lmatch_defer_α_64_5:
.Lgcsite_.LTp4_63:      cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        add              rsp, 16;                             jmp   n50_match_lit_β
.Lmatch_defer_α_64_0:   sub              rsp, 32
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
.Lgcsite_.LTp4_62:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_64_12
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp4_61:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_64_12: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_64_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_64_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_60:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_64_2:   test             rax, rax;                            je    .Lmatch_defer_α_64_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_64_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_64_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_64_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_64_141
                        lea              rcx, [rip + .Lmatch_defer_α_64_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_42]
                        lea              rdx, [rip + .Lmatch_defer_α_64_43];  jmp   rax
.Lmatch_defer_α_64_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_64_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_64_44:
.Lgcsite_.LTp4_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_46
.Lmatch_defer_α_64_45:
.Lgcsite_.LTp4_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_47
.Lmatch_defer_α_64_42:
.Lgcsite_.LTp4_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_46
.Lmatch_defer_α_64_43:
.Lgcsite_.LTp4_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_47
.Lmatch_defer_α_64_141: lea              rcx, [rip + .Lmatch_defer_α_64_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_142]
                        lea              rdx, [rip + .Lmatch_defer_α_64_143]; jmp   rax
.Lmatch_defer_α_64_142:
.Lgcsite_.LTp4_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_46
.Lmatch_defer_α_64_143:
.Lgcsite_.LTp4_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_64_47
.Lmatch_defer_α_64_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_53:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_64_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_64_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_52:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_64_2
.Lmatch_defer_α_64_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_51:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_64_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_64_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_50:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_64_2
.Lmatch_defer_α_64_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_64_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_64_62:
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
.Lgcsite_.LTp4_48:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_64_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_64_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_47:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_64_2
.Lmatch_defer_α_64_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_64_48
.Lmatch_defer_α_64_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_46:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_64_11
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_45:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_64_11: add              rsp, 144
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
.Lgcsite_.LTp4_44:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_64_49:  cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_64_999
                        add              rsp, 16;                             jmp   n50_match_lit_β
.Lmatch_defer_α_64_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_64_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_47_s1
.Lmatch_defer_α_64_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n50_match_lit_β
n51_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_64_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_64_12
                                                                              jmp   rax
.Lmatch_defer_β_64_12:                                                        jmp   qword ptr [rsp]
                        .size            n51_match_defer_bx, .-n51_match_defer_bx
                        .type            n52_match_defer_bx, @function
n52_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_65_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_65_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_65_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_65_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_65_18
.Lmatch_defer_α_65_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp4_88:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_65_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_65_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_87:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_65_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_65_16:
.Lmatch_defer_α_65_18:  test             rax, rax;                            jz    .Lmatch_defer_α_65_0
.Lmatch_defer_α_65_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_65_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_65_4:
.Lgcsite_.LTp4_86:                                                            jmp   n53_match_lit_α
.Lmatch_defer_α_65_5:
.Lgcsite_.LTp4_85:      cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
.Lmatch_defer_α_65_0:   sub              rsp, 32
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
.Lgcsite_.LTp4_84:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_65_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_65_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_83:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_65_2:   test             rax, rax;                            je    .Lmatch_defer_α_65_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_65_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_65_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_65_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_65_141
                        lea              rcx, [rip + .Lmatch_defer_α_65_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_42]
                        lea              rdx, [rip + .Lmatch_defer_α_65_43];  jmp   rax
.Lmatch_defer_α_65_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_65_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_65_44:
.Lgcsite_.LTp4_82:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_46
.Lmatch_defer_α_65_45:
.Lgcsite_.LTp4_81:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_47
.Lmatch_defer_α_65_42:
.Lgcsite_.LTp4_80:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_46
.Lmatch_defer_α_65_43:
.Lgcsite_.LTp4_79:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_47
.Lmatch_defer_α_65_141: lea              rcx, [rip + .Lmatch_defer_α_65_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_65_142]
                        lea              rdx, [rip + .Lmatch_defer_α_65_143]; jmp   rax
.Lmatch_defer_α_65_142:
.Lgcsite_.LTp4_78:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_46
.Lmatch_defer_α_65_143:
.Lgcsite_.LTp4_77:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_65_47
.Lmatch_defer_α_65_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_76:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_65_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_65_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_75:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_65_2
.Lmatch_defer_α_65_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_74:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_65_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_65_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_73:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_65_2
.Lmatch_defer_α_65_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_65_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_65_62:
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
.Lgcsite_.LTp4_71:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_65_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_65_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_70:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_65_2
.Lmatch_defer_α_65_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_65_48
.Lmatch_defer_α_65_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_69:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_65_13
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_68:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_65_13: add              rsp, 144
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
.Lgcsite_.LTp4_67:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_65_49:  cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_65_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
.Lmatch_defer_α_65_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_65_6]
                        push             rcx
                        push             rax;                                 jmp   n53_match_lit_α
.Lmatch_defer_α_65_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_47_af
n52_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_65_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_65_12
                                                                              jmp   rax
.Lmatch_defer_β_65_12:                                                        jmp   qword ptr [rsp]
                        .size            n52_match_defer_bx, .-n52_match_defer_bx
                        .type            n53_match_lit_bx, @function
n53_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n52_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n52_match_defer_β
                        add              r14d, 1;                             jmp   n54_match_defer_α
n53_match_lit_β:        sub              r14d, 1;                             jmp   n52_match_defer_β
                        .size            n53_match_lit_bx, .-n53_match_lit_bx
                        .type            n54_match_defer_bx, @function
n54_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_68_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_68_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp4_111:     mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp4_110:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11928];         jmp   .Lmatch_defer_α_68_10
.Lmatch_defer_α_68_9:   xor              eax, eax
.Lmatch_defer_α_68_10:  test             rax, rax;                            jz    .Lmatch_defer_α_68_0
.Lmatch_defer_α_68_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_68_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_68_4:
.Lgcsite_.LTp4_109:                                                           jmp   .Lmatch_alternate_γ_47_s0
.Lmatch_defer_α_68_5:
.Lgcsite_.LTp4_108:     cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        add              rsp, 16;                             jmp   n53_match_lit_β
.Lmatch_defer_α_68_0:   sub              rsp, 32
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
.Lgcsite_.LTp4_107:     cmp              rax, -1;                             jne   .Lmatch_defer_vd_68_15
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp4_106:     mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_68_15: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_68_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_68_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_105:     mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_68_2:   test             rax, rax;                            je    .Lmatch_defer_α_68_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_68_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_68_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_68_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_68_141
                        lea              rcx, [rip + .Lmatch_defer_α_68_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_42]
                        lea              rdx, [rip + .Lmatch_defer_α_68_43];  jmp   rax
.Lmatch_defer_α_68_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_68_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_68_44:
.Lgcsite_.LTp4_104:     add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_46
.Lmatch_defer_α_68_45:
.Lgcsite_.LTp4_103:     add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_47
.Lmatch_defer_α_68_42:
.Lgcsite_.LTp4_102:     add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_46
.Lmatch_defer_α_68_43:
.Lgcsite_.LTp4_101:     add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_47
.Lmatch_defer_α_68_141: lea              rcx, [rip + .Lmatch_defer_α_68_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_142]
                        lea              rdx, [rip + .Lmatch_defer_α_68_143]; jmp   rax
.Lmatch_defer_α_68_142:
.Lgcsite_.LTp4_100:     add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_46
.Lmatch_defer_α_68_143:
.Lgcsite_.LTp4_99:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_68_47
.Lmatch_defer_α_68_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp4_98:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_68_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_68_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_97:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_68_2
.Lmatch_defer_α_68_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp4_96:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_68_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_68_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_95:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_68_2
.Lmatch_defer_α_68_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_68_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_68_62:
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
.Lgcsite_.LTp4_93:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_68_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_68_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp4_92:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_68_2
.Lmatch_defer_α_68_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_68_48
.Lmatch_defer_α_68_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp4_91:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_68_14
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp4_90:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_68_14: add              rsp, 144
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
.Lgcsite_.LTp4_89:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_68_49:  cmp              r14d, -2;                            je    n55_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n55_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_68_999
                        add              rsp, 16;                             jmp   n53_match_lit_β
.Lmatch_defer_α_68_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_68_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_47_s0
.Lmatch_defer_α_68_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n53_match_lit_β
n54_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_68_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_68_12
                                                                              jmp   rax
.Lmatch_defer_β_68_12:                                                        jmp   qword ptr [rsp]
                        .size            n54_match_defer_bx, .-n54_match_defer_bx
                        .type            n55_match_abort_bx, @function
n55_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_match_abort_α:      mov              r14d, -2;                            jmp   .LTp4_ω
n55_match_abort_β:      mov              r14d, -2;                            jmp   .LTp4_ω
                        .size            n55_match_abort_bx, .-n55_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp4_β:
                                                                              jmp   .LTp4_ω
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
                        .quad            722900962650
                        .quad            17179869208
                        .quad            0
                        .quad            168
                        .quad            17
                        .quad            8804682956648
                        .quad            17596481011568
                        .quad            17596481011584
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
                        .long            192, 0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp5_5:
.LTp5:
.LTp5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 168
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp5 qword ptr [rbp + -160]
                        movups           xmmword ptr [rbp + -152], xmm0
                        movups           xmmword ptr [rbp + -136], xmm0
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
                        .type            n70_match_fence1_bx, @function
n70_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_fence1_α:     mov              qword ptr [rbp + -80], rsp
                        mov              qword ptr [rbp + -72], r12
                        mov              qword ptr [rbp + -64], 0
                        mov              dword ptr [rbp + -60], r14d
                        sub              rsp, 0;                              jmp   n71_match_alternate_α
.Lmatch_fence1_γ_70_as: add              rsp, 0
                        mov              rsp, qword ptr [rbp + -80];          jmp   .LTp5_γ
.Lmatch_fence1_γ_70_af:
.Lmatch_fence1_ω_70_af: add              rsp, 0
n70_match_fence1_β:     mov              r12, qword ptr [rbp + -72]
                        mov              r14d, dword ptr [rbp + -60];         jmp   .LTp5_ω
                        .size            n70_match_fence1_bx, .-n70_match_fence1_bx
                        .type            n71_match_alternate_bx, @function
n71_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  mov              dword ptr [rbp + -112], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_83_21]
                        mov              qword ptr [rbp + -96], rax;          jmp   n76_match_defer_α
.Lmatch_alternate_α_83_21:
                        lea              rax, [rip + .Lmatch_alternate_α_83_22]
                        mov              qword ptr [rbp + -96], rax;          jmp   n73_match_defer_α
.Lmatch_alternate_α_83_22:
                        lea              rax, [rip + .Lmatch_alternate_α_83_19]
                        mov              qword ptr [rbp + -96], rax;          jmp   n72_match_defer_α
.Lmatch_alternate_γ_71_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_83_40]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_γ_71_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_83_41]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_γ_71_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_83_42]
                        mov              qword ptr [rbp + -104], rax;         jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_α_83_40:
                                                                              jmp   n78_match_defer_β
.Lmatch_alternate_α_83_41:
                                                                              jmp   n75_match_defer_β
.Lmatch_alternate_α_83_42:
                                                                              jmp   n72_match_defer_β
.Lmatch_alternate_γ_71_as:
                                                                              jmp   .Lmatch_fence1_γ_70_as
n71_match_alternate_β:  mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lmatch_alternate_γ_71_af:
.Lmatch_alternate_ω_71_af:
                        mov              r14d, dword ptr [rbp + -112]
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_α_83_19:
                                                                              jmp   .Lmatch_fence1_ω_70_af
                        .size            n71_match_alternate_bx, .-n71_match_alternate_bx
                        .type            n72_match_defer_bx, @function
n72_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_84_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_84_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_84_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_84_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_84_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_84_18
.Lmatch_defer_α_84_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 2                               # i
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
                        test             rax, rax;                            je    .Lmatch_defer_α_84_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_84_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_84_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_84_16:
.Lmatch_defer_α_84_18:  test             rax, rax;                            jz    .Lmatch_defer_α_84_0
.Lmatch_defer_α_84_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_84_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_84_4:
.Lgcsite_.LTp5_19:                                                            jmp   .Lmatch_alternate_γ_71_s2
.Lmatch_defer_α_84_5:
.Lgcsite_.LTp5_18:      cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_84_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_84_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_84_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_84_2:   test             rax, rax;                            je    .Lmatch_defer_α_84_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_84_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_84_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_84_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_84_141
                        lea              rcx, [rip + .Lmatch_defer_α_84_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_42]
                        lea              rdx, [rip + .Lmatch_defer_α_84_43];  jmp   rax
.Lmatch_defer_α_84_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_84_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_84_44:
.Lgcsite_.LTp5_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_46
.Lmatch_defer_α_84_45:
.Lgcsite_.LTp5_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_47
.Lmatch_defer_α_84_42:
.Lgcsite_.LTp5_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_46
.Lmatch_defer_α_84_43:
.Lgcsite_.LTp5_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_47
.Lmatch_defer_α_84_141: lea              rcx, [rip + .Lmatch_defer_α_84_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_84_142]
                        lea              rdx, [rip + .Lmatch_defer_α_84_143]; jmp   rax
.Lmatch_defer_α_84_142:
.Lgcsite_.LTp5_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_46
.Lmatch_defer_α_84_143:
.Lgcsite_.LTp5_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_84_47
.Lmatch_defer_α_84_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_84_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_84_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_84_2
.Lmatch_defer_α_84_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_84_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_84_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_84_2
.Lmatch_defer_α_84_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_84_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_84_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_84_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_84_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_84_2
.Lmatch_defer_α_84_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_84_48
.Lmatch_defer_α_84_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_84_16
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_84_16: add              rsp, 144
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
.Lmatch_defer_α_84_49:  cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_84_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_84_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_84_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_71_s2
.Lmatch_defer_α_84_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
n72_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_84_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_84_12
                                                                              jmp   rax
.Lmatch_defer_β_84_12:                                                        jmp   qword ptr [rsp]
                        .size            n72_match_defer_bx, .-n72_match_defer_bx
                        .type            n73_match_defer_bx, @function
n73_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_85_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_85_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_85_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_85_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_85_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_85_18
.Lmatch_defer_α_85_17:  mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_85_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_85_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_42:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_85_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_85_16:
.Lmatch_defer_α_85_18:  test             rax, rax;                            jz    .Lmatch_defer_α_85_0
.Lmatch_defer_α_85_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_85_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_85_4:
.Lgcsite_.LTp5_41:                                                            jmp   n74_match_lit_α
.Lmatch_defer_α_85_5:
.Lgcsite_.LTp5_40:      cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_85_0:   sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_85_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_85_51:  lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_85_2:   test             rax, rax;                            je    .Lmatch_defer_α_85_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_85_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_85_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_85_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_85_141
                        lea              rcx, [rip + .Lmatch_defer_α_85_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_42]
                        lea              rdx, [rip + .Lmatch_defer_α_85_43];  jmp   rax
.Lmatch_defer_α_85_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_85_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_85_44:
.Lgcsite_.LTp5_37:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_46
.Lmatch_defer_α_85_45:
.Lgcsite_.LTp5_36:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_47
.Lmatch_defer_α_85_42:
.Lgcsite_.LTp5_35:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_46
.Lmatch_defer_α_85_43:
.Lgcsite_.LTp5_34:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_47
.Lmatch_defer_α_85_141: lea              rcx, [rip + .Lmatch_defer_α_85_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_85_142]
                        lea              rdx, [rip + .Lmatch_defer_α_85_143]; jmp   rax
.Lmatch_defer_α_85_142:
.Lgcsite_.LTp5_33:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_46
.Lmatch_defer_α_85_143:
.Lgcsite_.LTp5_32:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_85_47
.Lmatch_defer_α_85_46:  mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_85_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_85_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_30:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_85_2
.Lmatch_defer_α_85_47:  mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_85_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_85_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_28:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_85_2
.Lmatch_defer_α_85_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_85_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_85_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_85_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_85_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_25:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_85_2
.Lmatch_defer_α_85_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_85_48
.Lmatch_defer_α_85_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_24:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_85_17
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_23:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_85_17: add              rsp, 144
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
.Lmatch_defer_α_85_49:  cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_85_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_85_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_85_6]
                        push             rcx
                        push             rax;                                 jmp   n74_match_lit_α
.Lmatch_defer_α_85_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
n73_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_85_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_85_12
                                                                              jmp   rax
.Lmatch_defer_β_85_12:                                                        jmp   qword ptr [rsp]
                        .size            n73_match_defer_bx, .-n73_match_defer_bx
                        .type            n74_match_lit_bx, @function
n74_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n73_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n73_match_defer_β
                        add              r14d, 1;                             jmp   n75_match_defer_α
n74_match_lit_β:        sub              r14d, 1;                             jmp   n73_match_defer_β
                        .size            n74_match_lit_bx, .-n74_match_lit_bx
                        .type            n75_match_defer_bx, @function
n75_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_88_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_88_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp5_66:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp5_65:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_88_10
.Lmatch_defer_α_88_9:   xor              eax, eax
.Lmatch_defer_α_88_10:  test             rax, rax;                            jz    .Lmatch_defer_α_88_0
.Lmatch_defer_α_88_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_88_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_88_4:
.Lgcsite_.LTp5_64:                                                            jmp   .Lmatch_alternate_γ_71_s1
.Lmatch_defer_α_88_5:
.Lgcsite_.LTp5_63:      cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        add              rsp, 16;                             jmp   n74_match_lit_β
.Lmatch_defer_α_88_0:   sub              rsp, 32
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
.Lgcsite_.LTp5_62:      cmp              rax, -1;                             jne   .Lmatch_defer_vd_88_19
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp5_61:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_88_19: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_88_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_88_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_60:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_88_2:   test             rax, rax;                            je    .Lmatch_defer_α_88_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_88_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_88_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_88_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_88_141
                        lea              rcx, [rip + .Lmatch_defer_α_88_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_42]
                        lea              rdx, [rip + .Lmatch_defer_α_88_43];  jmp   rax
.Lmatch_defer_α_88_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_88_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_88_44:
.Lgcsite_.LTp5_59:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_46
.Lmatch_defer_α_88_45:
.Lgcsite_.LTp5_58:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_47
.Lmatch_defer_α_88_42:
.Lgcsite_.LTp5_57:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_46
.Lmatch_defer_α_88_43:
.Lgcsite_.LTp5_56:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_47
.Lmatch_defer_α_88_141: lea              rcx, [rip + .Lmatch_defer_α_88_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_88_142]
                        lea              rdx, [rip + .Lmatch_defer_α_88_143]; jmp   rax
.Lmatch_defer_α_88_142:
.Lgcsite_.LTp5_55:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_46
.Lmatch_defer_α_88_143:
.Lgcsite_.LTp5_54:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_88_47
.Lmatch_defer_α_88_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_53:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_88_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_88_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_52:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_88_2
.Lmatch_defer_α_88_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_51:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_88_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_88_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_50:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_88_2
.Lmatch_defer_α_88_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_88_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_88_62:
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
.Lgcsite_.LTp5_48:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_88_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_88_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_47:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_88_2
.Lmatch_defer_α_88_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_88_48
.Lmatch_defer_α_88_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_46:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_88_18
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_45:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_88_18: add              rsp, 144
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
.Lgcsite_.LTp5_44:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_88_49:  cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_88_999
                        add              rsp, 16;                             jmp   n74_match_lit_β
.Lmatch_defer_α_88_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_88_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_71_s1
.Lmatch_defer_α_88_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n74_match_lit_β
n75_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_88_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_88_12
                                                                              jmp   rax
.Lmatch_defer_β_88_12:                                                        jmp   qword ptr [rsp]
                        .size            n75_match_defer_bx, .-n75_match_defer_bx
                        .type            n76_match_defer_bx, @function
n76_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_89_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_89_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_89_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_89_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_89_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_89_18
.Lmatch_defer_α_89_17:  mov              rdi, qword ptr [rbp + -24]           # hv
                        mov              esi, 0                               # i
                        xor              edx, edx                             # fb
                        call             rt_patv_defer_get_pat_dtp@PLT
.Lgcsite_.LTp5_88:      mov              r9,  qword ptr [rip + rtccb+48]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_89_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_89_54:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_87:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_89_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_89_16:
.Lmatch_defer_α_89_18:  test             rax, rax;                            jz    .Lmatch_defer_α_89_0
.Lmatch_defer_α_89_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_89_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_89_4:
.Lgcsite_.LTp5_86:                                                            jmp   n77_match_lit_α
.Lmatch_defer_α_89_5:
.Lgcsite_.LTp5_85:      cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_89_0:   sub              rsp, 32
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
.Lgcsite_.LTp5_84:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_89_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_89_51:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_83:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_89_2:   test             rax, rax;                            je    .Lmatch_defer_α_89_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_89_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_89_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_89_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_89_141
                        lea              rcx, [rip + .Lmatch_defer_α_89_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_42]
                        lea              rdx, [rip + .Lmatch_defer_α_89_43];  jmp   rax
.Lmatch_defer_α_89_41:  sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_89_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_89_44:
.Lgcsite_.LTp5_82:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_46
.Lmatch_defer_α_89_45:
.Lgcsite_.LTp5_81:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_47
.Lmatch_defer_α_89_42:
.Lgcsite_.LTp5_80:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_46
.Lmatch_defer_α_89_43:
.Lgcsite_.LTp5_79:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_47
.Lmatch_defer_α_89_141: lea              rcx, [rip + .Lmatch_defer_α_89_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_89_142]
                        lea              rdx, [rip + .Lmatch_defer_α_89_143]; jmp   rax
.Lmatch_defer_α_89_142:
.Lgcsite_.LTp5_78:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_46
.Lmatch_defer_α_89_143:
.Lgcsite_.LTp5_77:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_89_47
.Lmatch_defer_α_89_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_76:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_89_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_89_52:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_75:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_89_2
.Lmatch_defer_α_89_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_74:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_89_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_89_53:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_73:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_89_2
.Lmatch_defer_α_89_61:  sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_89_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_89_62:
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
.Lgcsite_.LTp5_71:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_89_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_89_63:  lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp5_70:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_89_2
.Lmatch_defer_α_89_40:  add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_89_48
.Lmatch_defer_α_89_3:   mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp5_69:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_89_20
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_68:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_89_20: add              rsp, 144
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
.Lgcsite_.LTp5_67:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_89_49:  cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_89_999
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
.Lmatch_defer_α_89_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_89_6]
                        push             rcx
                        push             rax;                                 jmp   n77_match_lit_α
.Lmatch_defer_α_89_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_alternate_ω_71_af
n76_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_89_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_89_12
                                                                              jmp   rax
.Lmatch_defer_β_89_12:                                                        jmp   qword ptr [rsp]
                        .size            n76_match_defer_bx, .-n76_match_defer_bx
                        .type            n77_match_lit_bx, @function
n77_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n76_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n76_match_defer_β
                        add              r14d, 1;                             jmp   n78_match_defer_α
n77_match_lit_β:        sub              r14d, 1;                             jmp   n76_match_defer_β
                        .size            n77_match_lit_bx, .-n77_match_lit_bx
                        .type            n78_match_defer_bx, @function
n78_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_defer_α:      sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_92_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_92_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_.LTp5_111:     mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_.LTp5_110:     mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11944];         jmp   .Lmatch_defer_α_92_10
.Lmatch_defer_α_92_9:   xor              eax, eax
.Lmatch_defer_α_92_10:  test             rax, rax;                            jz    .Lmatch_defer_α_92_0
.Lmatch_defer_α_92_48:  mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_92_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_92_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_92_4:
.Lgcsite_.LTp5_109:                                                           jmp   .Lmatch_alternate_γ_71_s0
.Lmatch_defer_α_92_5:
.Lgcsite_.LTp5_108:     cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        add              rsp, 16;                             jmp   n77_match_lit_β
.Lmatch_defer_α_92_0:   sub              rsp, 32
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
.Lgcsite_.LTp5_107:     cmp              rax, -1;                             jne   .Lmatch_defer_vd_92_22
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_.LTp5_106:     mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_92_22: push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp5_105:     mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp5_104:     add              rsp, 48
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
.Lgcsite_.LTp5_103:     add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_47
.Lmatch_defer_α_92_42:
.Lgcsite_.LTp5_102:     add              rsp, 16
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
.Lgcsite_.LTp5_101:     add              rsp, 16
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
.Lgcsite_.LTp5_100:     add              rsp, 0
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
.Lgcsite_.LTp5_99:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_92_47
.Lmatch_defer_α_92_46:  mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_.LTp5_98:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp5_97:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_92_2
.Lmatch_defer_α_92_47:  mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_.LTp5_96:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp5_95:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp5_93:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
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
.Lgcsite_.LTp5_92:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_.LTp5_91:      cmp              eax, -2;                             jne   .Lmatch_defer_vd_92_21
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp5_90:      mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_92_21: add              rsp, 144
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
.Lgcsite_.LTp5_89:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_92_49:  cmp              r14d, -2;                            je    n79_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n79_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_92_999
                        add              rsp, 16;                             jmp   n77_match_lit_β
.Lmatch_defer_α_92_999: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_92_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_71_s0
.Lmatch_defer_α_92_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n77_match_lit_β
n78_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_92_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_92_12
                                                                              jmp   rax
.Lmatch_defer_β_92_12:                                                        jmp   qword ptr [rsp]
                        .size            n78_match_defer_bx, .-n78_match_defer_bx
                        .type            n79_match_abort_bx, @function
n79_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_abort_α:      mov              r14d, -2;                            jmp   .LTp5_ω
n79_match_abort_β:      mov              r14d, -2;                            jmp   .LTp5_ω
                        .size            n79_match_abort_bx, .-n79_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp5_β:
                                                                              jmp   .LTp5_ω
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
                        .quad            722900962650
                        .quad            17179869208
                        .quad            0
                        .quad            168
                        .quad            17
                        .quad            8804682956648
                        .quad            17596481011568
                        .quad            17596481011584
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
                        .long            192, 0
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
                        .type            n94_match_pos_bx, @function
n94_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   .LTp6_ω
                                                                              jmp   n95_match_arbno_α
n94_match_pos_β:                                                              jmp   .LTp6_ω
                        .size            n94_match_pos_bx, .-n94_match_pos_bx
                        .type            n95_match_arbno_bx, @function
n95_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_match_arbno_α:      sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n96_match_rpos_α
n95_match_arbno_β:      mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n97_match_defer_α
.Lmatch_arbno_γ_95_as:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n98_match_lit_β
                        sub              rsp, 32
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rbp + -64], rsp;          jmp   n96_match_rpos_α
.Lmatch_arbno_γ_95_af:
.Lmatch_arbno_ω_95_af:  mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_102_3
                        add              rsp, 32;                             jmp   n98_match_lit_β
.Lmatch_arbno_β_102_3:  add              rsp, 32;                             jmp   n94_match_pos_β
                        .size            n95_match_arbno_bx, .-n95_match_arbno_bx
                        .type            n96_match_rpos_bx, @function
n96_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n95_match_arbno_β
                                                                              jmp   .LTp6_γ
n96_match_rpos_β:                                                             jmp   n95_match_arbno_β
                        .size            n96_match_rpos_bx, .-n96_match_rpos_bx
                        .type            n97_match_defer_bx, @function
n97_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_104_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_104_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_104_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_104_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_104_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_104_18
.Lmatch_defer_α_104_17: mov              rdi, qword ptr [rbp + -24]           # hv
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
                        test             rax, rax;                            je    .Lmatch_defer_α_104_54
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_104_54: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_20:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      test             rax, rax;                            je    .Lmatch_defer_α_104_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_104_16:
.Lmatch_defer_α_104_18: test             rax, rax;                            jz    .Lmatch_defer_α_104_0
.Lmatch_defer_α_104_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_104_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_104_4:
.Lgcsite_.LTp6_19:                                                            jmp   n98_match_lit_α
.Lmatch_defer_α_104_5:
.Lgcsite_.LTp6_18:      cmp              r14d, -2;                            je    n99_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n99_match_abort_β
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_95_af
.Lmatch_defer_α_104_0:  sub              rsp, 32
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_104_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_104_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_104_2:  test             rax, rax;                            je    .Lmatch_defer_α_104_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_104_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_104_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_104_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_104_141
                        lea              rcx, [rip + .Lmatch_defer_α_104_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_42]
                        lea              rdx, [rip + .Lmatch_defer_α_104_43]; jmp   rax
.Lmatch_defer_α_104_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_104_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_104_44:
.Lgcsite_.LTp6_15:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_46
.Lmatch_defer_α_104_45:
.Lgcsite_.LTp6_14:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_47
.Lmatch_defer_α_104_42:
.Lgcsite_.LTp6_13:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_46
.Lmatch_defer_α_104_43:
.Lgcsite_.LTp6_12:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_47
.Lmatch_defer_α_104_141:
                        lea              rcx, [rip + .Lmatch_defer_α_104_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_104_142]
                        lea              rdx, [rip + .Lmatch_defer_α_104_143]
                                                                              jmp   rax
.Lmatch_defer_α_104_142:
.Lgcsite_.LTp6_11:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_46
.Lmatch_defer_α_104_143:
.Lgcsite_.LTp6_10:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_104_47
.Lmatch_defer_α_104_46: mov              rcx, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_104_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_104_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_8:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_104_2
.Lmatch_defer_α_104_47: mov              rsi, rsp
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_104_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_104_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_6:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_104_2
.Lmatch_defer_α_104_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_104_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_104_62:
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_104_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_104_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_.LTp6_3:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_104_2
.Lmatch_defer_α_104_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_104_48
.Lmatch_defer_α_104_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_.LTp6_2:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_104_23
                        call             c_rt_defer_close@PLT
.Lgcsite_.LTp6_1:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_104_23:
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
.Lgcsite_.LTp6_0:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_104_49: cmp              r14d, -2;                            je    n99_match_abort_β
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   n99_match_abort_β
                        test             eax, eax;                            jns   .Lmatch_defer_α_104_999
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_95_af
.Lmatch_defer_α_104_999:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_104_6]
                        push             rcx
                        push             rax;                                 jmp   n98_match_lit_α
.Lmatch_defer_α_104_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   .Lmatch_arbno_ω_95_af
n97_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_104_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_104_12
                                                                              jmp   rax
.Lmatch_defer_β_104_12:                                                       jmp   qword ptr [rsp]
                        .size            n97_match_defer_bx, .-n97_match_defer_bx
                        .type            n98_match_lit_bx, @function
n98_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n97_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 10;                             jne   n97_match_defer_β
                        add              r14d, 1;                             jmp   .Lmatch_arbno_γ_95_as
n98_match_lit_β:        sub              r14d, 1;                             jmp   n97_match_defer_β
                        .size            n98_match_lit_bx, .-n98_match_lit_bx
                        .type            n99_match_abort_bx, @function
n99_match_abort_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_match_abort_α:      mov              r14d, -2;                            jmp   .LTp6_ω
n99_match_abort_β:      mov              r14d, -2;                            jmp   .LTp6_ω
                        .size            n99_match_abort_bx, .-n99_match_abort_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp6_β:
                                                                              jmp   n96_match_rpos_β
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
                        .long            144, 0
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
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 1816]
main_α_body:
                        sub              rsp, 0
                        .type            n108_call_direct_bx, @function
n108_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_direct_α:     sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_224_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n109_call_direct_α
.Lcall_direct_α_224_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_call_direct_α
n108_call_direct_β:     add              rsp, 16
                        add              rsp, -16;                            jmp   n109_call_direct_α
                        .size            n108_call_direct_bx, .-n108_call_direct_bx
                        .type            n109_call_direct_bx, @function
n109_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_direct_α:     sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_225_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_α
.Lcall_direct_α_225_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n110_statement_begin_α
n109_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_α
                        .size            n109_call_direct_bx, .-n109_call_direct_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/calculator/calculator-1-match-fence.sno"
                        .popsection
.Lstatement_begin_α_226_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_226_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         &TRIM   =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n110_statement_begin_α:                                                       jmp   n111_lit_integer_α
n110_statement_begin_β:                                                       jmp   n114_setexit_test_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_kw_assign_snobol4_α
.Llit_integer_α_228_0:  .quad            0
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_kw_assign_snobol4_bx, @function
n112_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_229_0] # idx
                        mov              rsi, qword ptr [rsp + 16]            # v
                        mov              rdx, qword ptr [rsp + 24]            # v
                        call             rt_kw_write_idx@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_229_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Lkw_assign_snobol4_α_229_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n113_statement_end_α
.Lkw_assign_snobol4_α_229_0:
                        .quad            1
                        .size            n112_kw_assign_snobol4_bx, .-n112_kw_assign_snobol4_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 32;                             jmp   n115_statement_begin_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_setexit_test_bx, @function
n114_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_232_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_232_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_232_61:
.Lsetexit_test_α_232_1:                                                       jmp   n115_statement_begin_α
                        .size            n114_setexit_test_bx, .-n114_setexit_test_bx
                        .type            n115_statement_begin_bx, @function
n115_statement_begin_bx:
.Lstatement_begin_α_233_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_233_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         I       =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n115_statement_begin_α:                                                       jmp   n116_lit_string_α
n115_statement_begin_β:                                                       jmp   n120_setexit_test_α
                        .size            n115_statement_begin_bx, .-n115_statement_begin_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_235_0: .quad .Lthk_.LTp0; .popsection
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_call_direct_bx, @function
n117_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_236_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
.Lcall_direct_α_236_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_assign_α
n117_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
                        .size            n117_call_direct_bx, .-n117_call_direct_bx
                        .type            n118_assign_bx, @function
n118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # I
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n119_statement_end_α
                        .size            n118_assign_bx, .-n118_assign_bx
                        .type            n119_statement_end_bx, @function
n119_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   add              rsp, 32;                             jmp   n121_statement_begin_α
                        .size            n119_statement_end_bx, .-n119_statement_end_bx
                        .type            n120_setexit_test_bx, @function
n120_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_240_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_240_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_240_61:
.Lsetexit_test_α_240_1:                                                       jmp   n121_statement_begin_α
                        .size            n120_setexit_test_bx, .-n120_setexit_test_bx
                        .type            n121_statement_begin_bx, @function
n121_statement_begin_bx:
.Lstatement_begin_α_241_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_241_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         V       =  ANY(&LCASE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n121_statement_begin_α:                                                       jmp   n122_lit_string_α
n121_statement_begin_β:                                                       jmp   n126_setexit_test_α
                        .size            n121_statement_begin_bx, .-n121_statement_begin_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_243_0: .quad .Lthk_.LTp1; .popsection
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_call_direct_bx, @function
n123_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_direct_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_244_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lcall_direct_α_244_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_assign_α
n123_call_direct_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
                        .size            n123_call_direct_bx, .-n123_call_direct_bx
                        .type            n124_assign_bx, @function
n124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # V
                        mov              qword ptr [r9 + 11880], rdx;         jmp   n125_statement_end_α
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_248_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_248_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_248_61:
.Lsetexit_test_α_248_1:                                                       jmp   n127_statement_begin_α
                        .size            n126_setexit_test_bx, .-n126_setexit_test_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
.Lstatement_begin_α_249_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_249_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         A       =  FENCE(I | V | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n127_statement_begin_α:                                                       jmp   n128_lit_string_α
n127_statement_begin_β:                                                       jmp   n138_setexit_test_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_251_0: .quad .Lthk_.LTp2; .popsection
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_var_bx, @function
n129_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # I
                        mov              rdx, qword ptr [r9 + 11864]
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_direct_α
n130_lit_integer_β:     add              rsp, 16;                             jmp   n129_var_β
.Llit_integer_α_253_0:  .quad            6
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_254_999
                        add              rsp, 16;                             jmp   n130_lit_integer_β
.Lcall_direct_α_254_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
n131_call_direct_β:     add              rsp, 16;                             jmp   n130_lit_integer_β
                        .size            n131_call_direct_bx, .-n131_call_direct_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # V
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_lit_integer_α
n132_var_β:             add              rsp, 32;                             jmp   n130_lit_integer_β
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_direct_α
n133_lit_integer_β:     add              rsp, 16;                             jmp   n132_var_β
.Llit_integer_α_256_0:  .quad            6
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_257_999
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Lcall_direct_α_257_999:
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_258_999
                        add              rsp, 32;                             jmp   n133_lit_integer_β
.Lcall_direct_α_258_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_assign_α
n135_call_direct_β:     add              rsp, 32;                             jmp   n133_lit_integer_β
                        .size            n135_call_direct_bx, .-n135_call_direct_bx
                        .type            n136_assign_bx, @function
n136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # A
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n137_statement_end_α
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_262_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_262_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_262_61:
.Lsetexit_test_α_262_1:                                                       jmp   n139_statement_begin_α
                        .size            n138_setexit_test_bx, .-n138_setexit_test_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
.Lstatement_begin_α_263_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_263_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         F       =  FENCE('+' *F | '-' *F | A)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n139_statement_begin_α:                                                       jmp   n140_lit_string_α
n139_statement_begin_β:                                                       jmp   n147_setexit_test_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_lit_string_bx, @function
n140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_265_0: .quad .Lthk_.LTp3; .popsection
                        .size            n140_lit_string_bx, .-n140_lit_string_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # A
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_lit_integer_α
n141_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_call_direct_α
n142_lit_integer_β:     add              rsp, 16;                             jmp   n141_var_β
.Llit_integer_α_267_0:  .quad            5
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_268_999
                        add              rsp, 16;                             jmp   n142_lit_integer_β
.Lcall_direct_α_268_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_direct_α
n143_call_direct_β:     add              rsp, 16;                             jmp   n142_lit_integer_β
                        .size            n143_call_direct_bx, .-n143_call_direct_bx
                        .type            n144_call_direct_bx, @function
n144_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_269_999
                        add              rsp, 32;                             jmp   n142_lit_integer_β
.Lcall_direct_α_269_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_assign_α
n144_call_direct_β:     add              rsp, 32;                             jmp   n142_lit_integer_β
                        .size            n144_call_direct_bx, .-n144_call_direct_bx
                        .type            n145_assign_bx, @function
n145_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # F
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n146_statement_end_α
                        .size            n145_assign_bx, .-n145_assign_bx
                        .type            n146_statement_end_bx, @function
n146_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   add              rsp, 80;                             jmp   n148_statement_begin_α
                        .size            n146_statement_end_bx, .-n146_statement_end_bx
                        .type            n147_setexit_test_bx, @function
n147_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_273_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_273_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_273_61:
.Lsetexit_test_α_273_1:                                                       jmp   n148_statement_begin_α
                        .size            n147_setexit_test_bx, .-n147_setexit_test_bx
                        .type            n148_statement_begin_bx, @function
n148_statement_begin_bx:
.Lstatement_begin_α_274_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_274_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         T       =  FENCE(F '*' *T | F '/' *T | F)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n148_statement_begin_α:                                                       jmp   n149_lit_string_α
n148_statement_begin_β:                                                       jmp   n162_setexit_test_α
                        .size            n148_statement_begin_bx, .-n148_statement_begin_bx
                        .type            n149_lit_string_bx, @function
n149_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_276_0: .quad .Lthk_.LTp4; .popsection
                        .size            n149_lit_string_bx, .-n149_lit_string_bx
                        .type            n150_var_bx, @function
n150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_lit_integer_α
n150_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n148_statement_begin_β
                        .size            n150_var_bx, .-n150_var_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_call_direct_α
n151_lit_integer_β:     add              rsp, 16;                             jmp   n150_var_β
.Llit_integer_α_278_0:  .quad            8
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_call_direct_bx, @function
n152_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_direct_α:     sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_279_999
                        add              rsp, 16;                             jmp   n151_lit_integer_β
.Lcall_direct_α_279_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_var_α
n152_call_direct_β:     add              rsp, 16;                             jmp   n151_lit_integer_β
                        .size            n152_call_direct_bx, .-n152_call_direct_bx
                        .type            n153_var_bx, @function
n153_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_lit_integer_α
n153_var_β:             add              rsp, 32;                             jmp   n151_lit_integer_β
                        .size            n153_var_bx, .-n153_var_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_call_direct_α
n154_lit_integer_β:     add              rsp, 16;                             jmp   n153_var_β
.Llit_integer_α_281_0:  .quad            8
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_282_999
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lcall_direct_α_282_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_var_α
n155_call_direct_β:     add              rsp, 16;                             jmp   n154_lit_integer_β
                        .size            n155_call_direct_bx, .-n155_call_direct_bx
                        .type            n156_var_bx, @function
n156_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # F
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_lit_integer_α
n156_var_β:             add              rsp, 32;                             jmp   n154_lit_integer_β
                        .size            n156_var_bx, .-n156_var_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_call_direct_α
n157_lit_integer_β:     add              rsp, 16;                             jmp   n156_var_β
.Llit_integer_α_284_0:  .quad            5
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
                        cmp              al, 104;                             jne   .Lcall_direct_α_285_999
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lcall_direct_α_285_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_call_direct_α
n158_call_direct_β:     add              rsp, 16;                             jmp   n157_lit_integer_β
                        .size            n158_call_direct_bx, .-n158_call_direct_bx
                        .type            n159_call_direct_bx, @function
n159_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_direct_α:     sub              rsp, 16
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
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_286_999
                        add              rsp, 32;                             jmp   n157_lit_integer_β
.Lcall_direct_α_286_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_assign_α
n159_call_direct_β:     add              rsp, 32;                             jmp   n157_lit_integer_β
                        .size            n159_call_direct_bx, .-n159_call_direct_bx
                        .type            n160_assign_bx, @function
n160_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # T
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n161_statement_end_α
                        .size            n160_assign_bx, .-n160_assign_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 176;                            jmp   n163_statement_begin_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_setexit_test_bx, @function
n162_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_290_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_290_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_290_61:
.Lsetexit_test_α_290_1:                                                       jmp   n163_statement_begin_α
                        .size            n162_setexit_test_bx, .-n162_setexit_test_bx
                        .type            n163_statement_begin_bx, @function
n163_statement_begin_bx:
.Lstatement_begin_α_291_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_291_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         X       =  FENCE(T '+' *X | T '-' *X | T)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n163_statement_begin_α:                                                       jmp   n164_lit_string_α
n163_statement_begin_β:                                                       jmp   n177_setexit_test_α
                        .size            n163_statement_begin_bx, .-n163_statement_begin_bx
                        .type            n164_lit_string_bx, @function
n164_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_293_0: .quad .Lthk_.LTp5; .popsection
                        .size            n164_lit_string_bx, .-n164_lit_string_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_lit_integer_α
n165_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_direct_α
n166_lit_integer_β:     add              rsp, 16;                             jmp   n165_var_β
.Llit_integer_α_295_0:  .quad            8
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_call_direct_bx, @function
n167_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_direct_α:     sub              rsp, 16
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
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_296_999
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lcall_direct_α_296_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_var_α
n167_call_direct_β:     add              rsp, 16;                             jmp   n166_lit_integer_β
                        .size            n167_call_direct_bx, .-n167_call_direct_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
n168_var_β:             add              rsp, 32;                             jmp   n166_lit_integer_β
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_direct_α
n169_lit_integer_β:     add              rsp, 16;                             jmp   n168_var_β
.Llit_integer_α_298_0:  .quad            8
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
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_299_999
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lcall_direct_α_299_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_var_α
n170_call_direct_β:     add              rsp, 16;                             jmp   n169_lit_integer_β
                        .size            n170_call_direct_bx, .-n170_call_direct_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # T
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_lit_integer_α
n171_var_β:             add              rsp, 32;                             jmp   n169_lit_integer_β
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_direct_α
n172_lit_integer_β:     add              rsp, 16;                             jmp   n171_var_β
.Llit_integer_α_301_0:  .quad            5
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_call_direct_bx, @function
n173_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_302_999
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Lcall_direct_α_302_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_call_direct_α
n173_call_direct_β:     add              rsp, 16;                             jmp   n172_lit_integer_β
                        .size            n173_call_direct_bx, .-n173_call_direct_bx
                        .type            n174_call_direct_bx, @function
n174_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 64
                        cmp              al, 104;                             jne   .Lcall_direct_α_303_999
                        add              rsp, 32;                             jmp   n172_lit_integer_β
.Lcall_direct_α_303_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_assign_α
n174_call_direct_β:     add              rsp, 32;                             jmp   n172_lit_integer_β
                        .size            n174_call_direct_bx, .-n174_call_direct_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # X
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n176_statement_end_α
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 176;                            jmp   n178_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_setexit_test_bx, @function
n177_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_307_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_307_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_307_61:
.Lsetexit_test_α_307_1:                                                       jmp   n178_statement_begin_α
                        .size            n177_setexit_test_bx, .-n177_setexit_test_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
.Lstatement_begin_α_308_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_308_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n178_statement_begin_α:                                                       jmp   n179_lit_string_α
n178_statement_begin_β:                                                       jmp   n186_setexit_test_α
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_310_0: .quad .Lthk_.LTp6; .popsection
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # X
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_lit_integer_α
n180_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_call_direct_α
n181_lit_integer_β:     add              rsp, 16;                             jmp   n180_var_β
.Llit_integer_α_312_0:  .quad            8
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_call_direct_bx, @function
n182_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_313_999
                        add              rsp, 16;                             jmp   n181_lit_integer_β
.Lcall_direct_α_313_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_call_direct_α
n182_call_direct_β:     add              rsp, 16;                             jmp   n181_lit_integer_β
                        .size            n182_call_direct_bx, .-n182_call_direct_bx
                        .type            n183_call_direct_bx, @function
n183_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_314_999
                        add              rsp, 32;                             jmp   n181_lit_integer_β
.Lcall_direct_α_314_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
n183_call_direct_β:     add              rsp, 32;                             jmp   n181_lit_integer_β
                        .size            n183_call_direct_bx, .-n183_call_direct_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # C
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n185_statement_end_α
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_statement_end_bx, @function
n185_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   add              rsp, 80;                             jmp   n187_statement_begin_α
                        .size            n185_statement_end_bx, .-n185_statement_end_bx
                        .type            n186_setexit_test_bx, @function
n186_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_318_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_318_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_318_61:
.Lsetexit_test_α_318_1:                                                       jmp   n187_statement_begin_α
                        .size            n186_setexit_test_bx, .-n186_setexit_test_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
.Lstatement_begin_α_319_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_319_stno
                        .long            9
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n187_statement_begin_α:                                                       jmp   n188_lit_name_α
n187_statement_begin_β:                                                       jmp   n193_setexit_test_α
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_lit_name_bx, @function
n188_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_name_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_name_α_321_0: .quad .Llit_name_α_321_0_s; .popsection
.Llit_name_α_321_0_s:   .string          "INPUT"
                        .size            n188_lit_name_bx, .-n188_lit_name_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_322_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_lit_string_α
n189_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Llit_integer_α_322_0:  .quad            9
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_lit_string_bx, @function
n190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_call_try_α
n190_lit_string_β:      add              rsp, 16;                             jmp   n189_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_323_0: .quad .Llit_string_α_323_0_s; .popsection
.Llit_string_α_323_0_s: .string          "[-f0 -r4194304]"
                        .size            n190_lit_string_bx, .-n190_lit_string_bx
                        .type            n191_call_try_bx, @function
n191_call_try_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_try_α:        sub              rsp, 16
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
.Lcall_try_α_bynamefnzd128: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_try_α_bynamefnzd128]
                        lea              rsi, [rsp + 0]
                        lea              rcx, [rsp + 0]
                        movabs           rdx, 1548112371908611
                        call             rt_call_arr_bl_sn4_try@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_324_108
                        cmp              rax, 2;                              jne   .Lcall_try_α_324_109
                        lea              rdi, [rsp + 0]
                        mov              rsi, rdx
                        sub              rsp, 112
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rdx, rsp                             # pend
                        call             rt_tweak_open@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:234
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rcx, qword ptr [rsp + 0]
                        test             rcx, rcx;                            jz    .Lcall_try_α_324_150
                        lea              rdi, [rsp + 0]                       # args
                        mov              esi, 2                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lcall_try_α_324_151
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_324_130
                        cmp              rcx, 1;                              je    .Lcall_try_α_324_230
                        lea              rcx, [rip + .Lcall_try_α_324_132]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_131]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_131]
                        lea              rdx, [rip + .Lcall_try_α_324_132];   jmp   rax
.Lcall_try_α_324_130:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_324_133]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_324_134]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_324_133:
.Lgcsite_main_60:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_135
.Lcall_try_α_324_134:
.Lgcsite_main_59:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_136
.Lcall_try_α_324_131:
.Lgcsite_main_58:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_135
.Lcall_try_α_324_132:
.Lgcsite_main_57:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_136
.Lcall_try_α_324_230:   lea              rcx, [rip + .Lcall_try_α_324_232]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_231]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_231]
                        lea              rdx, [rip + .Lcall_try_α_324_232];   jmp   rax
.Lcall_try_α_324_231:
.Lgcsite_main_56:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_135
.Lcall_try_α_324_232:
.Lgcsite_main_55:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_136
.Lcall_try_α_324_135:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_324_152
.Lcall_try_α_324_136:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
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
1:                      add              rsp, 16;                             jmp   .Lcall_try_α_324_152
.Lcall_try_α_324_151:
.Lcall_try_α_324_152:   lea              rdi, [rsp + 0]                       # pend
                        call             rt_call_pend_close@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_try_α_324_150:   add              rsp, 112;                            jmp   .Lcall_try_α_324_108
.Lcall_try_α_324_109:   sub              rsp, 64
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
                        cmp              rcx, 2;                              je    .Lcall_try_α_324_100
                        cmp              rcx, 1;                              je    .Lcall_try_α_324_200
                        lea              rcx, [rip + .Lcall_try_α_324_102]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_101]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_101]
                        lea              rdx, [rip + .Lcall_try_α_324_102];   jmp   rax
.Lcall_try_α_324_100:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lcall_try_α_324_103]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lcall_try_α_324_104]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lcall_try_α_324_103:
.Lgcsite_main_49:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_105
.Lcall_try_α_324_104:
.Lgcsite_main_48:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_106
.Lcall_try_α_324_101:
.Lgcsite_main_47:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_105
.Lcall_try_α_324_102:
.Lgcsite_main_46:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_106
.Lcall_try_α_324_200:   lea              rcx, [rip + .Lcall_try_α_324_202]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_201]
                        push             rcx
                        lea              rcx, [rip + .Lcall_try_α_324_201]
                        lea              rdx, [rip + .Lcall_try_α_324_202];   jmp   rax
.Lcall_try_α_324_201:
.Lgcsite_main_45:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_105
.Lcall_try_α_324_202:
.Lgcsite_main_44:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lcall_try_α_324_106
.Lcall_try_α_324_105:   call             rt_call_land_γ@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_324_29
.Lcall_try_α_324_106:   call             rt_call_land_ω@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lcall_try_α_324_29
.Lcall_try_α_324_108:   mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_try_α_324_29:    push             rax
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
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_try_α_324_999
                        add              rsp, 16;                             jmp   n190_lit_string_β
.Lcall_try_α_324_999:   mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_statement_end_α
n191_call_try_β:        add              rsp, 16;                             jmp   n190_lit_string_β
                        .size            n191_call_try_bx, .-n191_call_try_bx
                        .type            n192_statement_end_bx, @function
n192_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   add              rsp, 64;                             jmp   n194_statement_begin_α
                        .size            n192_statement_end_bx, .-n192_statement_end_bx
                        .type            n193_setexit_test_bx, @function
n193_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_327_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_327_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_327_61:
.Lsetexit_test_α_327_1:                                                       jmp   n194_statement_begin_α
                        .size            n193_setexit_test_bx, .-n193_setexit_test_bx
                        .type            n194_statement_begin_bx, @function
n194_statement_begin_bx:
.Lstatement_begin_α_328_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_328_stno
                        .long            10
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     =  INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n194_statement_begin_α:                                                       jmp   n195_var_α
n194_statement_begin_β:                                                       jmp   n198_setexit_test_α
                        .size            n194_statement_begin_bx, .-n194_statement_begin_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lvar_α_330_0] # name
                        call             NV_GET_fn@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lvar_α_330_999
                        add              rsp, 16;                             jmp   n194_statement_begin_β
.Lvar_α_330_999:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n196_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lvar_α_330_0: .quad .Lvar_α_330_0_s; .popsection
.Lvar_α_330_0_s:        .string          "INPUT"
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_assign_bx, @function
n196_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # src
                        mov              qword ptr [r9 + 11976], rdx;         jmp   n197_statement_end_α
                        .size            n196_assign_bx, .-n196_assign_bx
                        .type            n197_statement_end_bx, @function
n197_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   add              rsp, 16;                             jmp   n199_statement_begin_α
                        .size            n197_statement_end_bx, .-n197_statement_end_bx
                        .type            n198_setexit_test_bx, @function
n198_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_334_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_334_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_334_61:
.Lsetexit_test_α_334_1:                                                       jmp   n218_statement_begin_α
                        .size            n198_setexit_test_bx, .-n198_setexit_test_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
.Lstatement_begin_α_335_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_335_stno
                        .long            11
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         src     ?  C  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n199_statement_begin_α:                                                       jmp   n200_var_α
n199_statement_begin_β:                                                       jmp   n209_setexit_test_α
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_var_bx, @function
n200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # src
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
                        .size            n200_var_bx, .-n200_var_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # C
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_lit_integer_α
n201_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n209_setexit_test_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_call_direct_α
n202_lit_integer_β:     add              rsp, 16;                             jmp   n201_var_β
.Llit_integer_α_339_0:  .quad            240
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_call_direct_bx, @function
n203_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_direct_α:     sub              rsp, 16
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
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_340_999
                        add              rsp, 16;                             jmp   n202_lit_integer_β
.Lcall_direct_α_340_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_assign_α
n203_call_direct_β:     add              rsp, 16;                             jmp   n202_lit_integer_β
                        .size            n203_call_direct_bx, .-n203_call_direct_bx
                        .type            n204_assign_bx, @function
n204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n205_match_begin_α
n204_assign_β:          add              rsp, 16;                             jmp   n202_lit_integer_β
                        .size            n204_assign_bx, .-n204_assign_bx
                        .type            n205_match_begin_bx, @function
n205_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_match_begin_α:     mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_76:       push             rbp
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
.Lgcsite_main_75:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_343_24
                        call             c_rt_match_enter@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_343_24:
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
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_343_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_343_1
.Lmatch_begin_α_343_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_343_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_343_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n206_match_defer_α
n205_match_begin_β:
.Lmatch_begin_α_343_13: mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_343_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_343_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_343_1
                                                                              jmp   .Lmatch_begin_α_343_0
.Lmatch_begin_α_343_1:
.Lmatch_begin_γ_205_af:
.Lmatch_begin_ω_205_af: mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_72:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n204_assign_β
                        .size            n205_match_begin_bx, .-n205_match_begin_bx
                        .type            n206_match_defer_bx, @function
n206_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_match_defer_α:     mov              rax, qword ptr [r9 + 11984]
                        mov              rdx, qword ptr [r9 + 11992]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_344_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_344_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11992];         jmp   .Lmatch_defer_α_344_10
.Lmatch_defer_α_344_9:  xor              eax, eax
.Lmatch_defer_α_344_10: test             rax, rax;                            jz    .Lmatch_defer_α_344_0
.Lmatch_defer_α_344_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_344_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_344_4:
.Lgcsite_main_97:                                                             jmp   n207_match_end_α
.Lmatch_defer_α_344_5:
.Lgcsite_main_96:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_205_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_205_af
                                                                              jmp   n205_match_begin_β
.Lmatch_defer_α_344_0:  sub              rsp, 32
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
.Lgcsite_main_95:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_344_26
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_94:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_344_26:
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_344_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_344_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_93:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_344_2:  test             rax, rax;                            je    .Lmatch_defer_α_344_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_344_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_344_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_344_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_344_141
                        lea              rcx, [rip + .Lmatch_defer_α_344_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_42]
                        lea              rdx, [rip + .Lmatch_defer_α_344_43]; jmp   rax
.Lmatch_defer_α_344_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_344_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_344_44:
.Lgcsite_main_92:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_46
.Lmatch_defer_α_344_45:
.Lgcsite_main_91:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_47
.Lmatch_defer_α_344_42:
.Lgcsite_main_90:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_46
.Lmatch_defer_α_344_43:
.Lgcsite_main_89:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_47
.Lmatch_defer_α_344_141:
                        lea              rcx, [rip + .Lmatch_defer_α_344_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_344_142]
                        lea              rdx, [rip + .Lmatch_defer_α_344_143]
                                                                              jmp   rax
.Lmatch_defer_α_344_142:
.Lgcsite_main_88:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_46
.Lmatch_defer_α_344_143:
.Lgcsite_main_87:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_344_47
.Lmatch_defer_α_344_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_344_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_344_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_344_2
.Lmatch_defer_α_344_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_344_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_344_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_344_2
.Lmatch_defer_α_344_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_344_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_344_62:
.Lgcsite_main_82:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_344_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_344_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_344_2
.Lmatch_defer_α_344_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_344_48
.Lmatch_defer_α_344_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_79:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_344_25
                        call             c_rt_defer_close@PLT
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_344_25:
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
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_344_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_205_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_205_af
                        test             eax, eax;                            js    n205_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_344_6]
                        push             rcx
                        push             rax;                                 jmp   n207_match_end_α
.Lmatch_defer_α_344_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n205_match_begin_β
n206_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_344_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_344_12
                                                                              jmp   rax
.Lmatch_defer_β_344_12:                                                       jmp   qword ptr [rsp]
                        .size            n206_match_defer_bx, .-n206_match_defer_bx
                        .type            n207_match_end_bx, @function
n207_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_205_af
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
.Lgcsite_main_131:      push             rax
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
.Lgcsite_main_130:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_346_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_346_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_346_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_346_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_346_120
                        lea              rcx, [rip + .Lmatch_end_α_346_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_21]
                        lea              rdx, [rip + .Lmatch_end_α_346_22];   jmp   rax
.Lmatch_end_α_346_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_346_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_346_23:
.Lgcsite_main_129:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_8
.Lmatch_end_α_346_24:
.Lgcsite_main_128:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_9
.Lmatch_end_α_346_21:
.Lgcsite_main_127:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_8
.Lmatch_end_α_346_22:
.Lgcsite_main_126:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_9
.Lmatch_end_α_346_120:  lea              rcx, [rip + .Lmatch_end_α_346_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_121]
                        lea              rdx, [rip + .Lmatch_end_α_346_122];  jmp   rax
.Lmatch_end_α_346_121:
.Lgcsite_main_125:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_8
.Lmatch_end_α_346_122:
.Lgcsite_main_124:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_9
.Lmatch_end_α_346_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_346_1
.Lmatch_end_α_346_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_121:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_346_1
.Lmatch_end_α_346_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_346_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_119:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_118:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_346_61
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_346_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_346_140
                        lea              rcx, [rip + .Lmatch_end_α_346_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_41]
                        lea              rdx, [rip + .Lmatch_end_α_346_42];   jmp   rax
.Lmatch_end_α_346_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_346_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_346_43:
.Lgcsite_main_117:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_45
.Lmatch_end_α_346_44:
.Lgcsite_main_116:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_46
.Lmatch_end_α_346_41:
.Lgcsite_main_115:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_45
.Lmatch_end_α_346_42:
.Lgcsite_main_114:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_46
.Lmatch_end_α_346_140:  lea              rcx, [rip + .Lmatch_end_α_346_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_346_141]
                        lea              rdx, [rip + .Lmatch_end_α_346_142];  jmp   rax
.Lmatch_end_α_346_141:
.Lgcsite_main_113:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_45
.Lmatch_end_α_346_142:
.Lgcsite_main_112:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_346_46
.Lmatch_end_α_346_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_111:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_346_62
.Lmatch_end_α_346_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_346_62
.Lmatch_end_α_346_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_107:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:292
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_106:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_346_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:296
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_104:      mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_346_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_102:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_346_1
.Lmatch_end_α_346_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_101:      mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_346_13
                                                                              jmp   .Lmatch_begin_ω_205_af
.Lmatch_end_α_346_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_100:                                                            jmp   n208_statement_end_α
                        .size            n207_match_end_bx, .-n207_match_end_bx
                        .type            n208_statement_end_bx, @function
n208_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 64;                             jmp   n210_statement_begin_α
                        .size            n208_statement_end_bx, .-n208_statement_end_bx
                        .type            n209_setexit_test_bx, @function
n209_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_349_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_349_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_349_61:
.Lsetexit_test_α_349_1:                                                       jmp   n218_statement_begin_α
                        .size            n209_setexit_test_bx, .-n209_setexit_test_bx
                        .type            n210_statement_begin_bx, @function
n210_statement_begin_bx:
.Lstatement_begin_α_350_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_350_stno
                        .long            12
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT  =  'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n210_statement_begin_α:                                                       jmp   n211_lit_string_α
n210_statement_begin_β:                                                       jmp   n217_setexit_test_α
                        .size            n210_statement_begin_bx, .-n210_statement_begin_bx
                        .type            n211_lit_string_bx, @function
n211_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_352_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_352_0: .quad .Llit_string_α_352_0_s; .popsection
.Llit_string_α_352_0_s: .string          "matched bytes="
                        .size            n211_lit_string_bx, .-n211_lit_string_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # src
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_call_byname_α
n212_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_call_byname_bx, @function
n213_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd355: .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd355]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_133:      cmp              al, 255;                             jne   .Lcall_byname_vd_354_27
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_132:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_354_27:
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
.Lgcsite_main_134:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_354_999
                        add              rsp, 16;                             jmp   n212_var_β
.Lcall_byname_α_354_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_binop_α
n213_call_byname_β:     add              rsp, 16;                             jmp   n212_var_β
                        .size            n213_call_byname_bx, .-n213_call_byname_bx
                        .type            n214_binop_bx, @function
n214_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_137:      cmp              al, 255;                             jne   .Lbinop_vd_356_28
                        call             c_sno_concat_d@PLT
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_356_28:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_356_999
                        add              rsp, 32;                             jmp   n212_var_β
.Lbinop_α_356_999:                                                            jmp   n215_assign_α
n214_binop_β:           add              rsp, 32;                             jmp   n212_var_β
                        .size            n214_binop_bx, .-n214_binop_bx
                        .type            n215_assign_bx, @function
n215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_357_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_138:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n216_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_357_0: .quad .Lassign_α_357_0_s; .popsection
.Lassign_α_357_0_s:     .string          "OUTPUT"
                        .size            n215_assign_bx, .-n215_assign_bx
                        .type            n216_statement_end_bx, @function
n216_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   add              rsp, 64;                             jmp   main_γ
                        .size            n216_statement_end_bx, .-n216_statement_end_bx
                        .type            n217_setexit_test_bx, @function
n217_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_360_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_360_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_360_61:
.Lsetexit_test_α_360_1:                                                       jmp   main_γ
                        .size            n217_setexit_test_bx, .-n217_setexit_test_bx
                        .type            n218_statement_begin_bx, @function
n218_statement_begin_bx:
.Lstatement_begin_α_361_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_361_stno
                        .long            13
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# error   OUTPUT  =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n218_statement_begin_α:                                                       jmp   n219_lit_string_α
n218_statement_begin_β:                                                       jmp   n222_setexit_test_α
                        .size            n218_statement_begin_bx, .-n218_statement_begin_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_363_0: .quad .Llit_string_α_363_0_s; .popsection
.Llit_string_α_363_0_s: .string          "Pattern match failed"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_assign_bx, @function
n220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_364_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n221_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_364_0: .quad .Lassign_α_364_0_s; .popsection
.Lassign_α_364_0_s:     .string          "OUTPUT"
                        .size            n220_assign_bx, .-n220_assign_bx
                        .type            n221_statement_end_bx, @function
n221_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n221_statement_end_bx, .-n221_statement_end_bx
                        .type            n222_setexit_test_bx, @function
n222_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_367_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_367_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_367_61:
.Lsetexit_test_α_367_1:                                                       jmp   main_γ
                        .size            n222_setexit_test_bx, .-n222_setexit_test_bx
                        .type            n223_goto_bx, @function
n223_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_goto_α:                                                                  jmp   n218_statement_begin_α
n223_goto_β:                                                                  jmp   main_ω
                        .size            n223_goto_bx, .-n223_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_144:      push             rax                                  # gc_poll bb_glue_flat.cpp:51
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_143:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_142:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_145:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            7835366804826
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1808
                        .quad            5
                        .quad            1636073302130688
                        .quad            8800387990992
                        .quad            17600775980504
                        .quad            79169132168680
                        .quad            246290604623408
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_7:       .quad            146
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
                        .quad            .Lgcsite_main_66-.Lgccode_main_7
                        .quad            481036337153
                        .quad            .Lgcsite_main_65-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_64-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_63-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_62-.Lgccode_main_7
                        .quad            962072674305
                        .quad            .Lgcsite_main_61-.Lgccode_main_7
                        .quad            1099511627777
                        .quad            .Lgcsite_main_60-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_59-.Lgccode_main_7
                        .quad            1511828488194
                        .quad            .Lgcsite_main_58-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_57-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_56-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_55-.Lgccode_main_7
                        .quad            1374389534722
                        .quad            .Lgcsite_main_54-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_53-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_52-.Lgccode_main_7
                        .quad            1030792151041
                        .quad            .Lgcsite_main_51-.Lgccode_main_7
                        .quad            1168231104513
                        .quad            .Lgcsite_main_50-.Lgccode_main_7
                        .quad            962072674305
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
                        .quad            .Lgcsite_main_67-.Lgccode_main_7
                        .quad            618475290625
                        .quad            .Lgcsite_main_69-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_68-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_70-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_71-.Lgccode_main_7
                        .quad            549755813889
                        .quad            .Lgcsite_main_76-.Lgccode_main_7
                        .quad            274877906948
                        .quad            .Lgcsite_main_75-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_74-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_73-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_72-.Lgccode_main_7
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
                        .quad            274878300417
                        .quad            .Lgcsite_main_94-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_93-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_92-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_91-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_90-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_89-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_88-.Lgccode_main_7
                        .quad            274878300418
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
                        .quad            274878300418
                        .quad            .Lgcsite_main_81-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_80-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_79-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_78-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_77-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_131-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_130-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_129-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_128-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_127-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_126-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_125-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_124-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_123-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_122-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_121-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_120-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_119-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_118-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_117-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_116-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_115-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_114-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_113-.Lgccode_main_7
                        .quad            274878300418
                        .quad            .Lgcsite_main_112-.Lgccode_main_7
                        .quad            274878300418
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
                        .quad            274878300417
                        .quad            .Lgcsite_main_104-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_103-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_102-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_101-.Lgccode_main_7
                        .quad            274878300417
                        .quad            .Lgcsite_main_100-.Lgccode_main_7
                        .quad            274877906949
                        .quad            .Lgcsite_main_133-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_132-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_134-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_137-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_136-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_135-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_139-.Lgccode_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_138-.Lgccode_main_7
                        .quad            412316860417
                        .quad            .Lgcsite_main_141-.Lgccode_main_7
                        .quad            68719476737
                        .quad            .Lgcsite_main_140-.Lgccode_main_7
                        .quad            206158430209
                        .quad            .Lgcsite_main_144-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_143-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_142-.Lgccode_main_7
                        .quad            1
                        .quad            .Lgcsite_main_145-.Lgccode_main_7
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
