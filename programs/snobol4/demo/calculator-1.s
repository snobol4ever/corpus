                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_α:
proc_LBL__EMIT_α_body:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                               jmp   n1_var_α
n0_statement_begin_β:                                               jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n3_subscript_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                   jmp   n0_statement_begin_β
.Lx20_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_subscript_α:         sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx21_240
                        add              rsp, 16;                   jmp   n2_lit_integer_β
.Lx21_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n4_deref_α
n3_subscript_β:         add              rsp, 16;                   jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx22_240
                        add              rsp, 16;                   jmp   n3_subscript_β
.Lx22_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n5_call_α
n4_deref_β:             add              rsp, 16;                   jmp   n3_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx24_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx24_2:                mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx24_240
                        add              rsp, 16;                   jmp   n4_deref_β
.Lx24_240:                                                          jmp   n6_assign_α
n5_call_β:                                                          jmp   n4_deref_β
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n7_statement_end_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     add              rsp, 80;                   jmp   n8_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:                                               jmp   n9_lit_integer_α
n8_statement_begin_β:                                               jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n10_assign_α
.Lx30_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    add              rsp, 16;                   jmp   n12_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:                                              jmp   n13_lit_string_α
n12_statement_begin_β:                                              jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n14_call_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd38:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd38]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx37_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n12_statement_begin_β
.Lx37_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n15_assign_α
n14_call_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # EMIT
                        mov              qword ptr [r9 + 8], rdx;   jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_β:
                                                                    jmp   proc_LBL__EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_α:
proc_LBL__PSH_α_body:
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:                                              jmp   n43_var_α
n42_statement_begin_β:                                              jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n45_binop_α
n44_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n42_statement_begin_β
.Lx57_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx58_240
                        add              rsp, 16;                   jmp   n44_lit_integer_β
.Lx58_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 48;                   jmp   n48_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:                                              jmp   n49_var_α
n48_statement_begin_β:                                              jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n51_subscript_α
n50_var_β:              add              rsp, 16
                        add              rsp, 16;                   jmp   n48_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx66_240
                        add              rsp, 16;                   jmp   n50_var_β
.Lx66_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n52_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # PSH
                        mov              qword ptr [r9 + 24], rdx;  jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    add              rsp, 48;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_β:
                                                                    jmp   proc_LBL__PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_α:
proc_LBL__DRF_α_body:
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:                                              jmp   n71_var_α
n70_statement_begin_β:                                              jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n72_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_match_begin_α:      mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 504], rsp                     # old____
                        sub              rsp, 64                                        # stmt_base
                        mov              qword ptr [rsp + 48], r13                      # outer_Σ
                        mov              qword ptr [rsp + 56], r14                      # outer_δ
                        mov              qword ptr [rsp + 64], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 72], rax                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx93_0:                mov              r14d, dword ptr [rsp + 0]; jmp   n73_match_pos_α
n72_match_begin_β:      mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                 jg    .Lx93_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx93_1
                                                                    jmp   .Lx93_0
.Lx93_1:
n72_match_begin_af:     sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 72]                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 64                                        # old____
                        add              rsp, 16;                   jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                 jne   n72_match_begin_β
                                                                    jmp   n74_match_any_α
n73_match_pos_β:                                                    jmp   n72_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                 jge   n72_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;     je    n72_match_begin_β
                        add              r14d, 1;                   jmp   n75_match_rpos_α
n74_match_any_β:        sub              r14d, 1;                   jmp   n72_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                 jne   n74_match_any_β
                                                                    jmp   n76_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_match_end_α:        mov              r8, r12
.Lx99_9:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx99_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx99_5:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx99_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx99_1:                test             rax, rax;                  je    .Lx99_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx99_3]
                        lea              rdx, [rip + .Lx99_4];      jmp   rax
.Lx99_3:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx99_1
.Lx99_4:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx99_1
.Lx99_2:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx99_10:               sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx99_10
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n77_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 80;                   jmp   n78_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                              jmp   n79_var_α
n78_statement_begin_β:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n81_subscript_α
n80_var_β:              add              rsp, 16
                        add              rsp, 16;                   jmp   n78_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx106_240
                        add              rsp, 16;                   jmp   n80_var_β
.Lx106_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n82_deref_α
n81_subscript_β:        add              rsp, 16;                   jmp   n80_var_β
#-----------------------------------------------------------------------------------------------------------------------
n82_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx107_240
                        add              rsp, 16;                   jmp   n81_subscript_β
.Lx107_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx;  jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 64;                   jmp   RETURN
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:                                              jmp   n86_var_α
n85_statement_begin_β:                                              jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n87_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx;  jmp   n88_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 16;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_β:
                                                                    jmp   proc_LBL__DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_α:
proc_LBL__ADD_α_body:
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                             jmp   n118_var_α
n117_statement_begin_β:                                             jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n120_subscript_α
n119_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n117_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx153_240
                        add              rsp, 16;                   jmp   n119_var_β
.Lx153_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n121_deref_α
n120_subscript_β:       add              rsp, 16;                   jmp   n119_var_β
#-----------------------------------------------------------------------------------------------------------------------
n121_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx154_240
                        add              rsp, 16;                   jmp   n120_subscript_β
.Lx154_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n122_call_α
n121_deref_β:           add              rsp, 16;                   jmp   n120_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx156_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx156_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx156_240
                        add              rsp, 16;                   jmp   n121_deref_β
.Lx156_240:                                                         jmp   n123_assign_α
n122_call_β:                                                        jmp   n121_deref_β
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;  jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 80;                   jmp   n125_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:                                             jmp   n126_var_α
n125_statement_begin_β:                                             jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n128_binop_α
n127_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n125_statement_begin_β
.Lx163_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx164_240
                        add              rsp, 16;                   jmp   n127_lit_integer_β
.Lx164_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 48;                   jmp   n131_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α:                                             jmp   n132_var_α
n131_statement_begin_β:                                             jmp   n144_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n134_subscript_α
n133_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n131_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx172_240
                        add              rsp, 16;                   jmp   n133_var_β
.Lx172_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n135_var_α
n134_subscript_β:       add              rsp, 16;                   jmp   n133_var_β
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n136_var_α
n135_var_β:             add              rsp, 16;                   jmp   n134_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n137_subscript_α
n136_var_β:             add              rsp, 16;                   jmp   n135_var_β
#-----------------------------------------------------------------------------------------------------------------------
n137_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx175_240
                        add              rsp, 16;                   jmp   n136_var_β
.Lx175_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n138_deref_α
n137_subscript_β:       add              rsp, 16;                   jmp   n136_var_β
#-----------------------------------------------------------------------------------------------------------------------
n138_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx176_240
                        add              rsp, 16;                   jmp   n137_subscript_β
.Lx176_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n139_call_α
n138_deref_β:           add              rsp, 16;                   jmp   n137_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx178_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx178_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx178_240
                        add              rsp, 16;                   jmp   n138_deref_β
.Lx178_240:                                                         jmp   n140_var_α
n139_call_β:                                                        jmp   n138_deref_β
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n141_binop_α
n140_var_β:             add              rsp, 32;                   jmp   n138_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx180_240
                        add              rsp, 16;                   jmp   n140_var_β
.Lx180_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n142_assign_var_α
n141_binop_β:           add              rsp, 16;                   jmp   n140_var_β
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx181_240
                        add              rsp, 16;                   jmp   n141_binop_β
.Lx181_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n143_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   add              rsp, 176;                  jmp   n144_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α:                                             jmp   n145_lit_string_α
n144_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n146_call_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd188:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd188]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx187_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n144_statement_begin_β
.Lx187_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n147_assign_α
n146_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n144_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              qword ptr [r9 + 72], rdx;  jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_β:
                                                                    jmp   proc_LBL__ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_α:
proc_LBL__SUB_α_body:
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α:                                             jmp   n193_var_α
n192_statement_begin_β:                                             jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n195_subscript_α
n194_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n192_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n195_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx228_240
                        add              rsp, 16;                   jmp   n194_var_β
.Lx228_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n196_deref_α
n195_subscript_β:       add              rsp, 16;                   jmp   n194_var_β
#-----------------------------------------------------------------------------------------------------------------------
n196_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx229_240
                        add              rsp, 16;                   jmp   n195_subscript_β
.Lx229_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n197_call_α
n196_deref_β:           add              rsp, 16;                   jmp   n195_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx231_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx231_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx231_240
                        add              rsp, 16;                   jmp   n196_deref_β
.Lx231_240:                                                         jmp   n198_assign_α
n197_call_β:                                                        jmp   n196_deref_β
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;  jmp   n199_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   add              rsp, 80;                   jmp   n200_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:                                             jmp   n201_var_α
n200_statement_begin_β:                                             jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n202_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n203_binop_α
n202_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n200_statement_begin_β
.Lx238_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx239_240
                        add              rsp, 16;                   jmp   n202_lit_integer_β
.Lx239_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   add              rsp, 48;                   jmp   n206_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α:                                             jmp   n207_var_α
n206_statement_begin_β:                                             jmp   n219_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n209_subscript_α
n208_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx247_240
                        add              rsp, 16;                   jmp   n208_var_β
.Lx247_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n210_var_α
n209_subscript_β:       add              rsp, 16;                   jmp   n208_var_β
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n211_var_α
n210_var_β:             add              rsp, 16;                   jmp   n209_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n212_subscript_α
n211_var_β:             add              rsp, 16;                   jmp   n210_var_β
#-----------------------------------------------------------------------------------------------------------------------
n212_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx250_240
                        add              rsp, 16;                   jmp   n211_var_β
.Lx250_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n213_deref_α
n212_subscript_β:       add              rsp, 16;                   jmp   n211_var_β
#-----------------------------------------------------------------------------------------------------------------------
n213_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx251_240
                        add              rsp, 16;                   jmp   n212_subscript_β
.Lx251_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n214_call_α
n213_deref_β:           add              rsp, 16;                   jmp   n212_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx253_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx253_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx253_240
                        add              rsp, 16;                   jmp   n213_deref_β
.Lx253_240:                                                         jmp   n215_var_α
n214_call_β:                                                        jmp   n213_deref_β
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n216_binop_α
n215_var_β:             add              rsp, 32;                   jmp   n213_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx255_240
                        add              rsp, 16;                   jmp   n215_var_β
.Lx255_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n217_assign_var_α
n216_binop_β:           add              rsp, 16;                   jmp   n215_var_β
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx256_240
                        add              rsp, 16;                   jmp   n216_binop_β
.Lx256_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n218_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:   add              rsp, 176;                  jmp   n219_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_begin_α:                                             jmp   n220_lit_string_α
n219_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n221_call_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd263:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd263]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx262_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n219_statement_begin_β
.Lx262_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n222_assign_α
n221_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n219_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              qword ptr [r9 + 104], rdx; jmp   n223_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_β:
                                                                    jmp   proc_LBL__SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_α:
proc_LBL__MUL_α_body:
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α:                                             jmp   n268_var_α
n267_statement_begin_β:                                             jmp   n275_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n270_subscript_α
n269_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n267_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx303_240
                        add              rsp, 16;                   jmp   n269_var_β
.Lx303_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n271_deref_α
n270_subscript_β:       add              rsp, 16;                   jmp   n269_var_β
#-----------------------------------------------------------------------------------------------------------------------
n271_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx304_240
                        add              rsp, 16;                   jmp   n270_subscript_β
.Lx304_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n272_call_α
n271_deref_β:           add              rsp, 16;                   jmp   n270_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx306_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx306_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx306_240
                        add              rsp, 16;                   jmp   n271_deref_β
.Lx306_240:                                                         jmp   n273_assign_α
n272_call_β:                                                        jmp   n271_deref_β
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;  jmp   n274_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_end_α:   add              rsp, 80;                   jmp   n275_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_begin_α:                                             jmp   n276_var_α
n275_statement_begin_β:                                             jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n277_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n278_binop_α
n277_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n275_statement_begin_β
.Lx313_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx314_240
                        add              rsp, 16;                   jmp   n277_lit_integer_β
.Lx314_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n279_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n280_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   add              rsp, 48;                   jmp   n281_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α:                                             jmp   n282_var_α
n281_statement_begin_β:                                             jmp   n294_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n283_var_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n284_subscript_α
n283_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n281_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx322_240
                        add              rsp, 16;                   jmp   n283_var_β
.Lx322_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n285_var_α
n284_subscript_β:       add              rsp, 16;                   jmp   n283_var_β
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n286_var_α
n285_var_β:             add              rsp, 16;                   jmp   n284_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n287_subscript_α
n286_var_β:             add              rsp, 16;                   jmp   n285_var_β
#-----------------------------------------------------------------------------------------------------------------------
n287_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx325_240
                        add              rsp, 16;                   jmp   n286_var_β
.Lx325_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n288_deref_α
n287_subscript_β:       add              rsp, 16;                   jmp   n286_var_β
#-----------------------------------------------------------------------------------------------------------------------
n288_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx326_240
                        add              rsp, 16;                   jmp   n287_subscript_β
.Lx326_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n289_call_α
n288_deref_β:           add              rsp, 16;                   jmp   n287_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx328_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx328_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx328_240
                        add              rsp, 16;                   jmp   n288_deref_β
.Lx328_240:                                                         jmp   n290_var_α
n289_call_β:                                                        jmp   n288_deref_β
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n291_binop_α
n290_var_β:             add              rsp, 32;                   jmp   n288_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                  jne   .Lx330_240
                        add              rsp, 16;                   jmp   n290_var_β
.Lx330_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n292_assign_var_α
n291_binop_β:           add              rsp, 16;                   jmp   n290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx331_240
                        add              rsp, 16;                   jmp   n291_binop_β
.Lx331_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n293_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:   add              rsp, 176;                  jmp   n294_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_begin_α:                                             jmp   n295_lit_string_α
n294_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n296_call_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd338:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd338]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx337_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n294_statement_begin_β
.Lx337_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n297_assign_α
n296_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n294_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              qword ptr [r9 + 120], rdx; jmp   n298_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_β:
                                                                    jmp   proc_LBL__MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_α:
proc_LBL__DIV_α_body:
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_begin_α:                                             jmp   n343_var_α
n342_statement_begin_β:                                             jmp   n350_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n345_subscript_α
n344_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n342_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n345_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx378_240
                        add              rsp, 16;                   jmp   n344_var_β
.Lx378_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n346_deref_α
n345_subscript_β:       add              rsp, 16;                   jmp   n344_var_β
#-----------------------------------------------------------------------------------------------------------------------
n346_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx379_240
                        add              rsp, 16;                   jmp   n345_subscript_β
.Lx379_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n347_call_α
n346_deref_β:           add              rsp, 16;                   jmp   n345_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx381_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx381_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx381_240
                        add              rsp, 16;                   jmp   n346_deref_β
.Lx381_240:                                                         jmp   n348_assign_α
n347_call_β:                                                        jmp   n346_deref_β
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx;  jmp   n349_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   add              rsp, 80;                   jmp   n350_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_begin_α:                                             jmp   n351_var_α
n350_statement_begin_β:                                             jmp   n356_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n353_binop_α
n352_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n350_statement_begin_β
.Lx388_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx389_240
                        add              rsp, 16;                   jmp   n352_lit_integer_β
.Lx389_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n354_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx; jmp   n355_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   add              rsp, 48;                   jmp   n356_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α:                                             jmp   n357_var_α
n356_statement_begin_β:                                             jmp   n369_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n359_subscript_α
n358_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n356_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n359_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx397_240
                        add              rsp, 16;                   jmp   n358_var_β
.Lx397_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n360_var_α
n359_subscript_β:       add              rsp, 16;                   jmp   n358_var_β
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n361_var_α
n360_var_β:             add              rsp, 16;                   jmp   n359_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n362_subscript_α
n361_var_β:             add              rsp, 16;                   jmp   n360_var_β
#-----------------------------------------------------------------------------------------------------------------------
n362_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx400_240
                        add              rsp, 16;                   jmp   n361_var_β
.Lx400_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n363_deref_α
n362_subscript_β:       add              rsp, 16;                   jmp   n361_var_β
#-----------------------------------------------------------------------------------------------------------------------
n363_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx401_240
                        add              rsp, 16;                   jmp   n362_subscript_β
.Lx401_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n364_call_α
n363_deref_β:           add              rsp, 16;                   jmp   n362_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx403_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx403_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx403_240
                        add              rsp, 16;                   jmp   n363_deref_β
.Lx403_240:                                                         jmp   n365_var_α
n364_call_β:                                                        jmp   n363_deref_β
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n366_binop_α
n365_var_β:             add              rsp, 32;                   jmp   n363_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                  jne   .Lx405_240
                        add              rsp, 16;                   jmp   n365_var_β
.Lx405_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n367_assign_var_α
n366_binop_β:           add              rsp, 16;                   jmp   n365_var_β
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx406_240
                        add              rsp, 16;                   jmp   n366_binop_β
.Lx406_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n368_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_end_α:   add              rsp, 176;                  jmp   n369_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_begin_α:                                             jmp   n370_lit_string_α
n369_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n371_call_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd413:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd413]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx412_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n369_statement_begin_β
.Lx412_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n372_assign_α
n371_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n369_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n372_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              qword ptr [r9 + 136], rdx; jmp   n373_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_β:
                                                                    jmp   proc_LBL__DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_α:
proc_LBL__NEG_α_body:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_begin_α:                                             jmp   n418_var_α
n417_statement_begin_β:                                             jmp   n429_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n419_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n420_subscript_α
n419_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n417_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n420_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx438_240
                        add              rsp, 16;                   jmp   n419_var_β
.Lx438_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n421_var_α
n420_subscript_β:       add              rsp, 16;                   jmp   n419_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n422_var_α
n421_var_β:             add              rsp, 16;                   jmp   n420_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n423_subscript_α
n422_var_β:             add              rsp, 16;                   jmp   n421_var_β
#-----------------------------------------------------------------------------------------------------------------------
n423_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx441_240
                        add              rsp, 16;                   jmp   n422_var_β
.Lx441_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n424_deref_α
n423_subscript_β:       add              rsp, 16;                   jmp   n422_var_β
#-----------------------------------------------------------------------------------------------------------------------
n424_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx442_240
                        add              rsp, 16;                   jmp   n423_subscript_β
.Lx442_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n425_call_α
n424_deref_β:           add              rsp, 16;                   jmp   n423_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n425_call_α:            sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx444_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha];    jmp   rax
.Lx444_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx444_240
                        add              rsp, 16;                   jmp   n424_deref_β
.Lx444_240:                                                         jmp   n426_unop_α
n425_call_β:                                                        jmp   n424_deref_β
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n426_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_num_neg@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n427_assign_var_α
n426_unop_β:            add              rsp, 32;                   jmp   n424_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n427_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx446_240
                        add              rsp, 16;                   jmp   n426_unop_β
.Lx446_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n428_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n428_statement_end_α:   add              rsp, 160;                  jmp   n429_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_begin_α:                                             jmp   n430_lit_string_α
n429_statement_begin_β:                                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n431_call_α
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd453:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd453]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx452_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n429_statement_begin_β
.Lx452_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n432_assign_α
n431_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n429_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n432_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax                      # NEG
                        mov              qword ptr [r9 + 152], rdx; jmp   n433_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_end_α:   add              rsp, 32;                   jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_β:
                                                                    jmp   proc_LBL__NEG_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n457_save_restore_α:                                                jmp   n458_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n458_goto_deferred_α:   lea              rax, [rip + proc_LBL__EMIT_α]; jmp   rax
                                                                    jmp   n459_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n459_save_restore_α:
EMIT_alpha:             mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx465_2
                        mov              eax, 0
.Lx465_2:               sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 0]                        # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + EMIT_gamma]
                        lea              r11, [rip + EMIT_omega]
                        lea              rax, [rip + proc_LBL__EMIT_α]; jmp   rax
EMIT_gamma:             mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx465_75
                        mov              eax, 0
.Lx465_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx465_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx465_3:               mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
EMIT_omega:             mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx465_145
                        mov              eax, 0
.Lx465_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx465_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx465_4:               mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_EMIT_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_β:
                                                                    jmp   proc_EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n466_save_restore_α:                                                jmp   n467_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n467_goto_deferred_α:   lea              rax, [rip + proc_LBL__PSH_α]; jmp   rax
                                                                    jmp   n468_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n468_save_restore_α:
PSH_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx474_2
                        mov              eax, 0
.Lx474_2:               sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 16]                       # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + PSH_gamma]
                        lea              r11, [rip + PSH_omega]
                        lea              rax, [rip + proc_LBL__PSH_α]; jmp   rax
PSH_gamma:              mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx474_75
                        mov              eax, 0
.Lx474_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx474_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx474_3:               mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
PSH_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx474_145
                        mov              eax, 0
.Lx474_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx474_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx474_4:               mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_PSH_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_β:
                                                                    jmp   proc_PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n475_save_restore_α:                                                jmp   n476_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n476_goto_deferred_α:   lea              rax, [rip + proc_LBL__DRF_α]; jmp   rax
                                                                    jmp   n477_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n477_save_restore_α:
DRF_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx483_2
                        mov              eax, 16
.Lx483_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 32]                       # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx483_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 48]                       # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx483_41
.Lx483_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx483_41:              lea              r10, [rip + DRF_gamma]
                        lea              r11, [rip + DRF_omega]
                        lea              rax, [rip + proc_LBL__DRF_α]; jmp   rax
DRF_gamma:              mov              rdi, qword ptr [r9 + 32]                       # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx483_75
                        mov              eax, 16
.Lx483_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx483_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;  jmp   .Lx483_110
.Lx483_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx483_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx483_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx483_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
DRF_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx483_145
                        mov              eax, 16
.Lx483_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx483_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax;  jmp   .Lx483_180
.Lx483_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx483_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx483_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx483_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_β:
                                                                    jmp   proc_DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_save_restore_α:                                                jmp   n485_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n485_goto_deferred_α:   lea              rax, [rip + proc_LBL__ADD_α]; jmp   rax
                                                                    jmp   n486_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n486_save_restore_α:
ADD_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx492_2
                        mov              eax, 16
.Lx492_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 64]                       # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx492_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx492_41
.Lx492_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx492_41:              lea              r10, [rip + ADD_gamma]
                        lea              r11, [rip + ADD_omega]
                        lea              rax, [rip + proc_LBL__ADD_α]; jmp   rax
ADD_gamma:              mov              rdi, qword ptr [r9 + 64]                       # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx492_75
                        mov              eax, 16
.Lx492_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                    jbe   .Lx492_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx492_110
.Lx492_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx492_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx492_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx492_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
ADD_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx492_145
                        mov              eax, 16
.Lx492_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0;                    jbe   .Lx492_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx492_180
.Lx492_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx492_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx492_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx492_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_ADD_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_β:
                                                                    jmp   proc_ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n493_save_restore_α:                                                jmp   n494_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n494_goto_deferred_α:   lea              rax, [rip + proc_LBL__SUB_α]; jmp   rax
                                                                    jmp   n495_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n495_save_restore_α:
SUB_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx501_2
                        mov              eax, 16
.Lx501_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 96]                       # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx501_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx501_41
.Lx501_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx501_41:              lea              r10, [rip + SUB_gamma]
                        lea              r11, [rip + SUB_omega]
                        lea              rax, [rip + proc_LBL__SUB_α]; jmp   rax
SUB_gamma:              mov              rdi, qword ptr [r9 + 96]                       # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx501_75
                        mov              eax, 16
.Lx501_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                    jbe   .Lx501_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx501_110
.Lx501_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx501_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx501_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx501_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
SUB_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx501_145
                        mov              eax, 16
.Lx501_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0;                    jbe   .Lx501_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx501_180
.Lx501_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx501_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx501_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx501_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_SUB_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_β:
                                                                    jmp   proc_SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n502_save_restore_α:                                                jmp   n503_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n503_goto_deferred_α:   lea              rax, [rip + proc_LBL__MUL_α]; jmp   rax
                                                                    jmp   n504_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n504_save_restore_α:
MUL_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx510_2
                        mov              eax, 16
.Lx510_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 112]                      # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx510_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx510_41
.Lx510_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx510_41:              lea              r10, [rip + MUL_gamma]
                        lea              r11, [rip + MUL_omega]
                        lea              rax, [rip + proc_LBL__MUL_α]; jmp   rax
MUL_gamma:              mov              rdi, qword ptr [r9 + 112]                      # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx510_75
                        mov              eax, 16
.Lx510_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                    jbe   .Lx510_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx510_110
.Lx510_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx510_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx510_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx510_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
MUL_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx510_145
                        mov              eax, 16
.Lx510_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0;                    jbe   .Lx510_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx510_180
.Lx510_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx510_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx510_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx510_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_MUL_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_β:
                                                                    jmp   proc_MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n511_save_restore_α:                                                jmp   n512_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n512_goto_deferred_α:   lea              rax, [rip + proc_LBL__DIV_α]; jmp   rax
                                                                    jmp   n513_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n513_save_restore_α:
DIV_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx519_2
                        mov              eax, 16
.Lx519_2:               sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 128]                      # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx519_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx519_41
.Lx519_10:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx519_41:              lea              r10, [rip + DIV_gamma]
                        lea              r11, [rip + DIV_omega]
                        lea              rax, [rip + proc_LBL__DIV_α]; jmp   rax
DIV_gamma:              mov              rdi, qword ptr [r9 + 128]                      # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx519_75
                        mov              eax, 16
.Lx519_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0;                    jbe   .Lx519_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx519_110
.Lx519_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx519_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx519_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx519_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
DIV_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx519_145
                        mov              eax, 16
.Lx519_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0;                    jbe   .Lx519_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx519_180
.Lx519_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx519_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1;                    jbe   .Lx519_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx519_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_DIV_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_β:
                                                                    jmp   proc_DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_NEG_α
proc_NEG_α:
proc_NEG_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n520_save_restore_α:                                                jmp   n521_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n521_goto_deferred_α:   lea              rax, [rip + proc_LBL__NEG_α]; jmp   rax
                                                                    jmp   n522_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n522_save_restore_α:
NEG_alpha:              mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx528_2
                        mov              eax, 0
.Lx528_2:               sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 144]                      # NEG
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + NEG_gamma]
                        lea              r11, [rip + NEG_omega]
                        lea              rax, [rip + proc_LBL__NEG_α]; jmp   rax
NEG_gamma:              mov              rdi, qword ptr [r9 + 144]
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx528_75
                        mov              eax, 0
.Lx528_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx528_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx528_3:               mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
NEG_omega:              mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0;                    jbe   .Lx528_145
                        mov              eax, 0
.Lx528_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0;                    jbe   .Lx528_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx528_4:               mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_NEG_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_β:
                                                                    jmp   proc_NEG_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n529_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n530_match_any_α
n529_match_assign_save_β: add              rsp, 16;                 jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_match_any_α:       mov              eax, r14d
                        cmp              eax, r15d;                 jl    .Lx535_239
                        add              rsp, 16;                   jmp   proc_PAT$0_ω
.Lx535_239:             movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;     jne   .Lx535_240
                        add              rsp, 16;                   jmp   proc_PAT$0_ω
.Lx535_240:             add              r14d, 1;                   jmp   n531_match_assign_cond_α
n530_match_any_β:       sub              r14d, 1
                        add              rsp, 16;                   jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   proc_PAT$0_γ
n531_match_assign_cond_β: sub              r12, 24;                 jmp   n530_match_any_β
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
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n538_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n539_match_span_α
n538_match_assign_save_β: add              rsp, 16;                 jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_match_span_α:      sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx544_0:               cmp              ecx, r15d;                 jge   .Lx544_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;     je    .Lx544_1
                        add              ecx, 1;                    jmp   .Lx544_0
.Lx544_1:               cmp              ecx, r14d;                 jg    .Lx544_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$1_ω
.Lx544_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                 jmp   n540_match_assign_cond_α
n539_match_span_β:      mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n540_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   proc_PAT$1_γ
n540_match_assign_cond_β: sub              r12, 24;                 jmp   n539_match_span_β
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
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
proc_PAT$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n547_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx555_21]
                        mov              qword ptr [rsp + 16], rax; jmp   n553_match_defer_α
.Lx555_21:              lea              rax, [rip + .Lx555_22]
                        mov              qword ptr [rsp + 16], rax; jmp   n552_match_defer_α
.Lx555_22:              lea              rax, [rip + .Lx555_19]
                        mov              qword ptr [rsp + 16], rax; jmp   n549_match_lit_α
n547_match_alternate_s0: lea              rax, [rip + .Lx555_40]
                        mov              qword ptr [rsp + 8], rax;  jmp   n547_match_alternate_as
n547_match_alternate_s1: lea              rax, [rip + .Lx555_41]
                        mov              qword ptr [rsp + 8], rax;  jmp   n547_match_alternate_as
n547_match_alternate_s2: lea              rax, [rip + .Lx555_42]
                        mov              qword ptr [rsp + 8], rax;  jmp   n547_match_alternate_as
.Lx555_40:                                                          jmp   n553_match_defer_β
.Lx555_41:                                                          jmp   n552_match_defer_β
.Lx555_42:                                                          jmp   n548_goto_β
n547_match_alternate_as:                                            jmp   proc_PAT$2_γ
n547_match_alternate_β: mov              rax, qword ptr [rsp + 8];  jmp   rax
n547_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]; jmp   rax
.Lx555_19:              add              rsp, 32;                   jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_goto_α:                                                        jmp   n547_match_alternate_af
n548_goto_β:                                                        jmp   n547_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n549_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n547_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                   jne   n547_match_alternate_af
                        add              r14d, 1;                   jmp   n550_match_defer_α
n549_match_lit_β:       sub              r14d, 1;                   jmp   n547_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n550_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx559_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                    jne   .Lx559_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx559_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx559_10
.Lx559_9:               xor              eax, eax
.Lx559_10:              lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx559_11:              test             rax, rax;                  jz    .Lx559_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx559_4]
                        lea              r11, [rip + .Lx559_5];     jmp   rax
.Lx559_4:                                                           jmp   n551_match_lit_α
.Lx559_5:                                                           jmp   n549_match_lit_β
.Lx559_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx559_2:               test             rax, rax;                  je    .Lx559_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx559_7]
                        lea              rdx, [rip + .Lx559_8];     jmp   rax
.Lx559_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx559_2
.Lx559_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx559_2
.Lx559_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n549_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx559_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n551_match_lit_α
.Lx559_6:               add              rsp, 16;                   jmp   n549_match_lit_β
n550_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n551_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n547_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                   jne   n547_match_alternate_af
                        add              r14d, 1;                   jmp   n547_match_alternate_s2
n551_match_lit_β:       sub              r14d, 1;                   jmp   n547_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n552_match_defer_α:     mov              rax, qword ptr [r9 + 528]                      # PAT$2$V1
                        mov              rdx, qword ptr [r9 + 536]
                        cmp              eax, 8;                    jne   .Lx562_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx562_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx562_10
.Lx562_9:               xor              eax, eax
.Lx562_10:              test             rax, rax;                  jz    .Lx562_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx562_4]
                        lea              r11, [rip + .Lx562_5];     jmp   rax
.Lx562_4:                                                           jmp   n547_match_alternate_s1
.Lx562_5:                                                           jmp   n547_match_alternate_af
.Lx562_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx562_2:               test             rax, rax;                  je    .Lx562_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx562_7]
                        lea              rdx, [rip + .Lx562_8];     jmp   rax
.Lx562_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx562_2
.Lx562_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx562_2
.Lx562_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n547_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx562_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n547_match_alternate_s1
.Lx562_6:               add              rsp, 16;                   jmp   n547_match_alternate_af
n552_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n553_match_defer_α:     mov              rax, qword ptr [r9 + 512]                      # PAT$2$V0
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8;                    jne   .Lx563_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx563_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx563_10
.Lx563_9:               xor              eax, eax
.Lx563_10:              test             rax, rax;                  jz    .Lx563_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx563_4]
                        lea              r11, [rip + .Lx563_5];     jmp   rax
.Lx563_4:                                                           jmp   n547_match_alternate_s0
.Lx563_5:                                                           jmp   n547_match_alternate_af
.Lx563_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx563_2:               test             rax, rax;                  je    .Lx563_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx563_7]
                        lea              rdx, [rip + .Lx563_8];     jmp   rax
.Lx563_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx563_2
.Lx563_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx563_2
.Lx563_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n547_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx563_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n547_match_alternate_s0
.Lx563_6:               add              rsp, 16;                   jmp   n547_match_alternate_af
n553_match_defer_β:                                                 jmp   qword ptr [rsp]
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
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n564_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx575_21]
                        mov              qword ptr [rsp + 16], rax; jmp   n573_match_defer_α
.Lx575_21:              lea              rax, [rip + .Lx575_22]
                        mov              qword ptr [rsp + 16], rax; jmp   n571_match_lit_α
.Lx575_22:              lea              rax, [rip + .Lx575_19]
                        mov              qword ptr [rsp + 16], rax; jmp   n566_match_lit_α
n564_match_alternate_s0: lea              rax, [rip + .Lx575_40]
                        mov              qword ptr [rsp + 8], rax;  jmp   n564_match_alternate_as
n564_match_alternate_s1: lea              rax, [rip + .Lx575_41]
                        mov              qword ptr [rsp + 8], rax;  jmp   n564_match_alternate_as
n564_match_alternate_s2: lea              rax, [rip + .Lx575_42]
                        mov              qword ptr [rsp + 8], rax;  jmp   n564_match_alternate_as
.Lx575_40:                                                          jmp   n573_match_defer_β
.Lx575_41:                                                          jmp   n570_goto_β
.Lx575_42:                                                          jmp   n565_goto_β
n564_match_alternate_as:                                            jmp   proc_PAT$3_γ
n564_match_alternate_β: mov              rax, qword ptr [rsp + 8];  jmp   rax
n564_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]; jmp   rax
.Lx575_19:              add              rsp, 32;                   jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_goto_α:                                                        jmp   n564_match_alternate_af
n565_goto_β:                                                        jmp   n564_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n566_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n564_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                   jne   n564_match_alternate_af
                        add              r14d, 1;                   jmp   n567_match_assign_save_α
n566_match_lit_β:       sub              r14d, 1;                   jmp   n564_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n567_match_assign_save_α: lea              rdi, [rsp + 128]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n568_match_defer_α
n567_match_assign_save_β: lea              rdi, [rsp + 128]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n566_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n568_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx581_11
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                    jne   .Lx581_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx581_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx581_10
.Lx581_9:               xor              eax, eax
.Lx581_10:              lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx581_11:              test             rax, rax;                  jz    .Lx581_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx581_4]
                        lea              r11, [rip + .Lx581_5];     jmp   rax
.Lx581_4:                                                           jmp   n569_match_assign_cond_α
.Lx581_5:                                                           jmp   n567_match_assign_save_β
.Lx581_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx581_2:               test             rax, rax;                  je    .Lx581_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx581_7]
                        lea              rdx, [rip + .Lx581_8];     jmp   rax
.Lx581_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx581_2
.Lx581_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx581_2
.Lx581_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n567_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx581_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n569_match_assign_cond_α
.Lx581_6:               add              rsp, 16;                   jmp   n567_match_assign_save_β
n568_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n569_match_assign_cond_α: lea              rdi, [rsp + 128]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n564_match_alternate_s2
n569_match_assign_cond_β: sub              r12, 24;                 jmp   n568_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n570_goto_α:                                                        jmp   n564_match_alternate_af
n570_goto_β:                                                        jmp   n564_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n571_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n564_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                   jne   n564_match_alternate_af
                        add              r14d, 1;                   jmp   n572_match_defer_α
n571_match_lit_β:       sub              r14d, 1;                   jmp   n564_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n572_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx587_11
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8;                    jne   .Lx587_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx587_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx587_10
.Lx587_9:               xor              eax, eax
.Lx587_10:              lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx587_11:              test             rax, rax;                  jz    .Lx587_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx587_4]
                        lea              r11, [rip + .Lx587_5];     jmp   rax
.Lx587_4:                                                           jmp   n564_match_alternate_s1
.Lx587_5:                                                           jmp   n571_match_lit_β
.Lx587_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx587_2:               test             rax, rax;                  je    .Lx587_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx587_7]
                        lea              rdx, [rip + .Lx587_8];     jmp   rax
.Lx587_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx587_2
.Lx587_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx587_2
.Lx587_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n571_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx587_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n564_match_alternate_s1
.Lx587_6:               add              rsp, 16;                   jmp   n571_match_lit_β
n572_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n573_match_defer_α:     mov              rax, qword ptr [r9 + 544]                      # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 552]
                        cmp              eax, 8;                    jne   .Lx588_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx588_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx588_10
.Lx588_9:               xor              eax, eax
.Lx588_10:              test             rax, rax;                  jz    .Lx588_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx588_4]
                        lea              r11, [rip + .Lx588_5];     jmp   rax
.Lx588_4:                                                           jmp   n564_match_alternate_s0
.Lx588_5:                                                           jmp   n564_match_alternate_af
.Lx588_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx588_2:               test             rax, rax;                  je    .Lx588_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx588_7]
                        lea              rdx, [rip + .Lx588_8];     jmp   rax
.Lx588_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx588_2
.Lx588_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx588_2
.Lx588_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n564_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx588_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n564_match_alternate_s0
.Lx588_6:               add              rsp, 16;                   jmp   n564_match_alternate_af
n573_match_defer_β:                                                 jmp   qword ptr [rsp]
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
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n589_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]                      # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 568]
                        cmp              eax, 8;                    jne   .Lx602_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx602_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx602_10
.Lx602_9:               xor              eax, eax
.Lx602_10:              test             rax, rax;                  jz    .Lx602_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx602_4]
                        lea              r11, [rip + .Lx602_5];     jmp   rax
.Lx602_4:                                                           jmp   n590_match_alternate_α
.Lx602_5:               add              rsp, 16;                   jmp   proc_PAT$4_ω
.Lx602_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx602_2:               test             rax, rax;                  je    .Lx602_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx602_7]
                        lea              rdx, [rip + .Lx602_8];     jmp   rax
.Lx602_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx602_2
.Lx602_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx602_2
.Lx602_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jns   .Lx602_240
                        add              rsp, 16;                   jmp   proc_PAT$4_ω
.Lx602_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx602_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n590_match_alternate_α
.Lx602_6:               add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$4_ω
n589_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n590_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx604_21]
                        mov              qword ptr [rsp + 16], rax; jmp   n598_match_lit_α
.Lx604_21:              lea              rax, [rip + .Lx604_22]
                        mov              qword ptr [rsp + 16], rax; jmp   n593_match_lit_α
.Lx604_22:              lea              rax, [rip + .Lx604_19]
                        mov              qword ptr [rsp + 16], rax; jmp   n591_match_lit_α
n590_match_alternate_s0: lea              rax, [rip + .Lx604_40]
                        mov              qword ptr [rsp + 8], rax;  jmp   n590_match_alternate_as
n590_match_alternate_s1: lea              rax, [rip + .Lx604_41]
                        mov              qword ptr [rsp + 8], rax;  jmp   n590_match_alternate_as
n590_match_alternate_s2: lea              rax, [rip + .Lx604_42]
                        mov              qword ptr [rsp + 8], rax;  jmp   n590_match_alternate_as
.Lx604_40:                                                          jmp   n597_goto_β
.Lx604_41:                                                          jmp   n592_goto_β
.Lx604_42:                                                          jmp   n591_match_lit_β
n590_match_alternate_as:                                            jmp   proc_PAT$4_γ
n590_match_alternate_β: mov              rax, qword ptr [rsp + 8];  jmp   rax
n590_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]; jmp   rax
.Lx604_19:              add              rsp, 32;                   jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_match_lit_α:                                                   jmp   n590_match_alternate_s2
n591_match_lit_β:                                                   jmp   n590_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n592_goto_α:                                                        jmp   n590_match_alternate_af
n592_goto_β:                                                        jmp   n590_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n593_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n590_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                   jne   n590_match_alternate_af
                        add              r14d, 1;                   jmp   n594_match_assign_save_α
n593_match_lit_β:       sub              r14d, 1;                   jmp   n590_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n594_match_assign_save_α: lea              rdi, [rsp + 176]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n595_match_defer_α
n594_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n593_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n595_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx612_11
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                    jne   .Lx612_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx612_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx612_10
.Lx612_9:               xor              eax, eax
.Lx612_10:              lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx612_11:              test             rax, rax;                  jz    .Lx612_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx612_4]
                        lea              r11, [rip + .Lx612_5];     jmp   rax
.Lx612_4:                                                           jmp   n596_match_assign_cond_α
.Lx612_5:                                                           jmp   n594_match_assign_save_β
.Lx612_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx612_2:               test             rax, rax;                  je    .Lx612_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx612_7]
                        lea              rdx, [rip + .Lx612_8];     jmp   rax
.Lx612_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx612_2
.Lx612_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx612_2
.Lx612_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n594_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx612_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n596_match_assign_cond_α
.Lx612_6:               add              rsp, 16;                   jmp   n594_match_assign_save_β
n595_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n596_match_assign_cond_α: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n590_match_alternate_s1
n596_match_assign_cond_β: sub              r12, 24;                 jmp   n595_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n597_goto_α:                                                        jmp   n590_match_alternate_af
n597_goto_β:                                                        jmp   n590_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n598_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n590_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                   jne   n590_match_alternate_af
                        add              r14d, 1;                   jmp   n599_match_assign_save_α
n598_match_lit_β:       sub              r14d, 1;                   jmp   n590_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n599_match_assign_save_α: lea              rdi, [rsp + 112]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n600_match_defer_α
n599_match_assign_save_β: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n598_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n600_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx620_11
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        cmp              eax, 8;                    jne   .Lx620_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx620_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx620_10
.Lx620_9:               xor              eax, eax
.Lx620_10:              lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx620_11:              test             rax, rax;                  jz    .Lx620_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx620_4]
                        lea              r11, [rip + .Lx620_5];     jmp   rax
.Lx620_4:                                                           jmp   n601_match_assign_cond_α
.Lx620_5:                                                           jmp   n599_match_assign_save_β
.Lx620_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx620_2:               test             rax, rax;                  je    .Lx620_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx620_7]
                        lea              rdx, [rip + .Lx620_8];     jmp   rax
.Lx620_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx620_2
.Lx620_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx620_2
.Lx620_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n599_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx620_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n601_match_assign_cond_α
.Lx620_6:               add              rsp, 16;                   jmp   n599_match_assign_save_β
n600_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n601_match_assign_cond_α: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n590_match_alternate_s0
n601_match_assign_cond_β: sub              r12, 24;                 jmp   n600_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                    jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
proc_PAT$5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n623_match_defer_α:     sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]                      # PAT$5$V0
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8;                    jne   .Lx636_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx636_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx636_10
.Lx636_9:               xor              eax, eax
.Lx636_10:              test             rax, rax;                  jz    .Lx636_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx636_4]
                        lea              r11, [rip + .Lx636_5];     jmp   rax
.Lx636_4:                                                           jmp   n624_match_alternate_α
.Lx636_5:               add              rsp, 16;                   jmp   proc_PAT$5_ω
.Lx636_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx636_2:               test             rax, rax;                  je    .Lx636_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx636_7]
                        lea              rdx, [rip + .Lx636_8];     jmp   rax
.Lx636_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx636_2
.Lx636_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx636_2
.Lx636_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jns   .Lx636_240
                        add              rsp, 16;                   jmp   proc_PAT$5_ω
.Lx636_240:             mov              r14d, eax
                        lea              rax, [rip + .Lx636_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n624_match_alternate_α
.Lx636_6:               add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$5_ω
n623_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n624_match_alternate_α: sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx638_21]
                        mov              qword ptr [rsp + 16], rax; jmp   n632_match_lit_α
.Lx638_21:              lea              rax, [rip + .Lx638_22]
                        mov              qword ptr [rsp + 16], rax; jmp   n627_match_lit_α
.Lx638_22:              lea              rax, [rip + .Lx638_19]
                        mov              qword ptr [rsp + 16], rax; jmp   n625_match_lit_α
n624_match_alternate_s0: lea              rax, [rip + .Lx638_40]
                        mov              qword ptr [rsp + 8], rax;  jmp   n624_match_alternate_as
n624_match_alternate_s1: lea              rax, [rip + .Lx638_41]
                        mov              qword ptr [rsp + 8], rax;  jmp   n624_match_alternate_as
n624_match_alternate_s2: lea              rax, [rip + .Lx638_42]
                        mov              qword ptr [rsp + 8], rax;  jmp   n624_match_alternate_as
.Lx638_40:                                                          jmp   n631_goto_β
.Lx638_41:                                                          jmp   n626_goto_β
.Lx638_42:                                                          jmp   n625_match_lit_β
n624_match_alternate_as:                                            jmp   proc_PAT$5_γ
n624_match_alternate_β: mov              rax, qword ptr [rsp + 8];  jmp   rax
n624_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]; jmp   rax
.Lx638_19:              add              rsp, 32;                   jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n625_match_lit_α:                                                   jmp   n624_match_alternate_s2
n625_match_lit_β:                                                   jmp   n624_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n626_goto_α:                                                        jmp   n624_match_alternate_af
n626_goto_β:                                                        jmp   n624_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n627_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n624_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                   jne   n624_match_alternate_af
                        add              r14d, 1;                   jmp   n628_match_assign_save_α
n627_match_lit_β:       sub              r14d, 1;                   jmp   n624_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n628_match_assign_save_α: lea              rdi, [rsp + 176]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n629_match_defer_α
n628_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n627_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n629_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx646_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                    jne   .Lx646_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx646_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx646_10
.Lx646_9:               xor              eax, eax
.Lx646_10:              lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx646_11:              test             rax, rax;                  jz    .Lx646_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx646_4]
                        lea              r11, [rip + .Lx646_5];     jmp   rax
.Lx646_4:                                                           jmp   n630_match_assign_cond_α
.Lx646_5:                                                           jmp   n628_match_assign_save_β
.Lx646_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx646_2:               test             rax, rax;                  je    .Lx646_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx646_7]
                        lea              rdx, [rip + .Lx646_8];     jmp   rax
.Lx646_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx646_2
.Lx646_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx646_2
.Lx646_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n628_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx646_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n630_match_assign_cond_α
.Lx646_6:               add              rsp, 16;                   jmp   n628_match_assign_save_β
n629_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n630_match_assign_cond_α: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n624_match_alternate_s1
n630_match_assign_cond_β: sub              r12, 24;                 jmp   n629_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n631_goto_α:                                                        jmp   n624_match_alternate_af
n631_goto_β:                                                        jmp   n624_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n632_match_lit_α:       mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jg    n624_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                   jne   n624_match_alternate_af
                        add              r14d, 1;                   jmp   n633_match_assign_save_α
n632_match_lit_β:       sub              r14d, 1;                   jmp   n624_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n633_match_assign_save_α: lea              rdi, [rsp + 112]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n634_match_defer_α
n633_match_assign_save_β: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n632_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n634_match_defer_α:     lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax;                  jne   .Lx654_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8;                    jne   .Lx654_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx654_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx654_10
.Lx654_9:               xor              eax, eax
.Lx654_10:              lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx654_11:              test             rax, rax;                  jz    .Lx654_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx654_4]
                        lea              r11, [rip + .Lx654_5];     jmp   rax
.Lx654_4:                                                           jmp   n635_match_assign_cond_α
.Lx654_5:                                                           jmp   n633_match_assign_save_β
.Lx654_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx654_2:               test             rax, rax;                  je    .Lx654_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx654_7]
                        lea              rdx, [rip + .Lx654_8];     jmp   rax
.Lx654_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx654_2
.Lx654_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx654_2
.Lx654_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n633_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx654_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n635_match_assign_cond_α
.Lx654_6:               add              rsp, 16;                   jmp   n633_match_assign_save_β
n634_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n635_match_assign_cond_α: lea              rdi, [rsp + 112]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n624_match_alternate_s0
n635_match_assign_cond_β: sub              r12, 24;                 jmp   n634_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                    jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
proc_PAT$6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n658_call_α
.Lx661_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd268:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd268]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx662_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$6_ω
.Lx662_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n659_match_value_α
n658_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n659_match_value_α:     lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx663_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx663_4]
                        lea              rdx, [rip + .Lx663_5];     jmp   rax
.Lx663_4:                                                           jmp   n660_match_fence1_α
.Lx663_5:                                                           jmp   proc_PAT$6_ω
.Lx663_0:               lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    proc_PAT$6_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx663_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n660_match_fence1_α
.Lx663_6:               add              rsp, 16;                   jmp   proc_PAT$6_ω
n659_match_value_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n660_match_fence1_α:                                                jmp   proc_PAT$6_γ
n660_match_fence1_β:                                                jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                    jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
proc_PAT$7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n666_match_pos_α:       mov              rax, 0
                        cmp              r14d, eax;                 jne   proc_PAT$7_ω
                                                                    jmp   n667_match_arbno_α
n666_match_pos_β:                                                   jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n667_match_arbno_α:     lea              rdi, [rip + .S15]
                        call             rt_bomb@PLT
                        ud2
n667_match_arbno_β:     lea              rdi, [rip + .S14]
                        call             rt_bomb@PLT
                        ud2
n667_match_arbno_as:
n667_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n668_match_rpos_α:      mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                 jne   n667_match_arbno_β
                                                                    jmp   proc_PAT$7_γ
#-----------------------------------------------------------------------------------------------------------------------
n669_match_defer_α:     mov              rax, qword ptr [r9 + 592]                      # PAT$7$V0
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8;                    jne   .Lx678_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx678_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx678_10
.Lx678_9:               xor              eax, eax
.Lx678_10:              test             rax, rax;                  jz    .Lx678_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx678_4]
                        lea              r11, [rip + .Lx678_5];     jmp   rax
.Lx678_4:                                                           jmp   n670_match_defer_α
.Lx678_5:                                                           jmp   n667_match_arbno_af
.Lx678_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx678_2:               test             rax, rax;                  je    .Lx678_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx678_7]
                        lea              rdx, [rip + .Lx678_8];     jmp   rax
.Lx678_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx678_2
.Lx678_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx678_2
.Lx678_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n667_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx678_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n670_match_defer_α
.Lx678_6:               add              rsp, 16;                   jmp   n667_match_arbno_af
n669_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n670_match_defer_α:     mov              rax, qword ptr [r9 + 608]                      # PAT$7$V1
                        mov              rdx, qword ptr [r9 + 616]
                        cmp              eax, 8;                    jne   .Lx679_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx679_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx679_10
.Lx679_9:               xor              eax, eax
.Lx679_10:              test             rax, rax;                  jz    .Lx679_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx679_4]
                        lea              r11, [rip + .Lx679_5];     jmp   rax
.Lx679_4:                                                           jmp   n671_match_assign_save_α
.Lx679_5:                                                           jmp   n667_match_arbno_af
.Lx679_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx679_2:               test             rax, rax;                  je    .Lx679_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx679_7]
                        lea              rdx, [rip + .Lx679_8];     jmp   rax
.Lx679_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx679_2
.Lx679_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx679_2
.Lx679_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n667_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx679_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n671_match_assign_save_α
.Lx679_6:               add              rsp, 16;                   jmp   n667_match_arbno_af
n670_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n671_match_assign_save_α: lea              rdi, [rsp + 176]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n672_match_defer_α
n671_match_assign_save_β: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n667_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n672_match_defer_α:     mov              rax, qword ptr [r9 + 624]                      # PAT$7$V2
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8;                    jne   .Lx682_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                  jne   .Lx682_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx682_10
.Lx682_9:               xor              eax, eax
.Lx682_10:              test             rax, rax;                  jz    .Lx682_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx682_4]
                        lea              r11, [rip + .Lx682_5];     jmp   rax
.Lx682_4:                                                           jmp   n673_match_assign_cond_α
.Lx682_5:                                                           jmp   n671_match_assign_save_β
.Lx682_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx682_2:               test             rax, rax;                  je    .Lx682_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx682_7]
                        lea              rdx, [rip + .Lx682_8];     jmp   rax
.Lx682_7:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx682_2
.Lx682_8:               mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx682_2
.Lx682_3:               add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n671_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx682_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n673_match_assign_cond_α
.Lx682_6:               add              rsp, 16;                   jmp   n671_match_assign_save_β
n672_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n673_match_assign_cond_α: lea              rdi, [rsp + 176]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S19]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n667_match_arbno_as
n673_match_assign_cond_β: sub              r12, 24;                 jmp   n672_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                    jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax;                       jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                                                                    jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__EMIT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__EMIT_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__PSH"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__PSH_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__DRF"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__DRF_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__ADD_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__SUB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__SUB_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__MUL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__MUL_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__DIV"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_LBL__DIV_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__NEG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_LBL__NEG_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 4816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname23]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "NEG"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "epsilon"
.Lgvan25:               .string          "nl"
.Lgvan26:               .string          "line"
.Lgvan27:               .string          "b1"
.Lgvan28:               .string          "b2"
.Lgvan29:               .string          "src"
.Lgvan30:               .string          "t0"
.Lgvan31:               .string          "t1"
.Lgvan32:               .string          "PAT$2$V0"
.Lgvan33:               .string          "PAT$2$V1"
.Lgvan34:               .string          "PAT$3$V0"
.Lgvan35:               .string          "PAT$4$V0"
.Lgvan36:               .string          "PAT$5$V0"
.Lgvan37:               .string          "PAT$7$V0"
.Lgvan38:               .string          "PAT$7$V1"
.Lgvan39:               .string          "PAT$7$V2"
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
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .quad            .Lgvan38
                        .quad            .Lgvan39
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 40
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 40
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n685_statement_begin_α:                                             jmp   n686_func_activate_α
n685_statement_begin_β:                                             jmp   n688_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n686_func_activate_α:   mov              rdi, qword ptr [rip + .Lx948_0]
                        mov              rsi, qword ptr [rip + .Lx948_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_EMIT_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n687_statement_end_α
n686_func_activate_β:                                               jmp   n685_statement_begin_β
.Lx948_0:               .quad            .Lx948_0_s
.Lx948_0_s:             .string          "EMIT"
.Lx948_1:               .quad            .Lx948_1_s
.Lx948_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n687_statement_end_α:                                               jmp   n688_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n688_statement_begin_α:                                             jmp   n689_statement_end_α
n688_statement_begin_β:                                             jmp   n690_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n689_statement_end_α:                                               jmp   n690_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_begin_α:                                             jmp   n691_func_activate_α
n690_statement_begin_β:                                             jmp   n693_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n691_func_activate_α:   mov              rdi, qword ptr [rip + .Lx958_0]
                        mov              rsi, qword ptr [rip + .Lx958_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_PSH_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n692_statement_end_α
n691_func_activate_β:                                               jmp   n690_statement_begin_β
.Lx958_0:               .quad            .Lx958_0_s
.Lx958_0_s:             .string          "PSH"
.Lx958_1:               .quad            .Lx958_1_s
.Lx958_1_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n692_statement_end_α:                                               jmp   n693_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n693_statement_begin_α:                                             jmp   n694_statement_end_α
n693_statement_begin_β:                                             jmp   n695_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n694_statement_end_α:                                               jmp   n695_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n695_statement_begin_α:                                             jmp   n696_func_activate_α
n695_statement_begin_β:                                             jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n696_func_activate_α:   mov              rdi, qword ptr [rip + .Lx968_0]
                        mov              rsi, qword ptr [rip + .Lx968_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_DRF_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n697_statement_end_α
n696_func_activate_β:                                               jmp   n695_statement_begin_β
.Lx968_0:               .quad            .Lx968_0_s
.Lx968_0_s:             .string          "DRF"
.Lx968_1:               .quad            .Lx968_1_s
.Lx968_1_s:             .string          "nm"
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_end_α:                                               jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n698_statement_begin_α:                                             jmp   n699_statement_end_α
n698_statement_begin_β:                                             jmp   n700_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n699_statement_end_α:                                               jmp   n700_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_begin_α:                                             jmp   n701_func_activate_α
n700_statement_begin_β:                                             jmp   n703_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n701_func_activate_α:   mov              rdi, qword ptr [rip + .Lx978_0]
                        mov              rsi, qword ptr [rip + .Lx978_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_ADD_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n702_statement_end_α
n701_func_activate_β:                                               jmp   n700_statement_begin_β
.Lx978_0:               .quad            .Lx978_0_s
.Lx978_0_s:             .string          "ADD"
.Lx978_1:               .quad            .Lx978_1_s
.Lx978_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n702_statement_end_α:                                               jmp   n703_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n703_statement_begin_α:                                             jmp   n704_statement_end_α
n703_statement_begin_β:                                             jmp   n705_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n704_statement_end_α:                                               jmp   n705_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_begin_α:                                             jmp   n706_func_activate_α
n705_statement_begin_β:                                             jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n706_func_activate_α:   mov              rdi, qword ptr [rip + .Lx988_0]
                        mov              rsi, qword ptr [rip + .Lx988_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SUB_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n707_statement_end_α
n706_func_activate_β:                                               jmp   n705_statement_begin_β
.Lx988_0:               .quad            .Lx988_0_s
.Lx988_0_s:             .string          "SUB"
.Lx988_1:               .quad            .Lx988_1_s
.Lx988_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n707_statement_end_α:                                               jmp   n708_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_begin_α:                                             jmp   n709_statement_end_α
n708_statement_begin_β:                                             jmp   n710_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_end_α:                                               jmp   n710_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n710_statement_begin_α:                                             jmp   n711_func_activate_α
n710_statement_begin_β:                                             jmp   n713_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n711_func_activate_α:   mov              rdi, qword ptr [rip + .Lx998_0]
                        mov              rsi, qword ptr [rip + .Lx998_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_MUL_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n712_statement_end_α
n711_func_activate_β:                                               jmp   n710_statement_begin_β
.Lx998_0:               .quad            .Lx998_0_s
.Lx998_0_s:             .string          "MUL"
.Lx998_1:               .quad            .Lx998_1_s
.Lx998_1_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n712_statement_end_α:                                               jmp   n713_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n713_statement_begin_α:                                             jmp   n714_statement_end_α
n713_statement_begin_β:                                             jmp   n715_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n714_statement_end_α:                                               jmp   n715_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n715_statement_begin_α:                                             jmp   n716_func_activate_α
n715_statement_begin_β:                                             jmp   n718_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n716_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1008_0]
                        mov              rsi, qword ptr [rip + .Lx1008_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_DIV_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n717_statement_end_α
n716_func_activate_β:                                               jmp   n715_statement_begin_β
.Lx1008_0:              .quad            .Lx1008_0_s
.Lx1008_0_s:            .string          "DIV"
.Lx1008_1:              .quad            .Lx1008_1_s
.Lx1008_1_s:            .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n717_statement_end_α:                                               jmp   n718_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n718_statement_begin_α:                                             jmp   n719_statement_end_α
n718_statement_begin_β:                                             jmp   n720_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_end_α:                                               jmp   n720_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n720_statement_begin_α:                                             jmp   n721_func_activate_α
n720_statement_begin_β:                                             jmp   n723_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n721_func_activate_α:   mov              rdi, qword ptr [rip + .Lx1018_0]
                        mov              rsi, qword ptr [rip + .Lx1018_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_NEG_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n722_statement_end_α
n721_func_activate_β:                                               jmp   n720_statement_begin_β
.Lx1018_0:              .quad            .Lx1018_0_s
.Lx1018_0_s:            .string          "NEG"
.Lx1018_1:              .quad            .Lx1018_1_s
.Lx1018_1_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n722_statement_end_α:                                               jmp   n723_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n723_statement_begin_α:                                             jmp   n724_statement_end_α
n723_statement_begin_β:                                             jmp   n725_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n724_statement_end_α:                                               jmp   n725_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n725_statement_begin_α:                                             jmp   n726_lit_integer_α
n725_statement_begin_β:                                             jmp   n730_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n727_call_α
.Lx1027_0:              .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n727_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1029:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1029]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1028_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n725_statement_begin_β
.Lx1028_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n728_assign_α
n727_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n725_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n728_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax                      # S
                        mov              qword ptr [r9 + 168], rdx; jmp   n729_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n729_statement_end_α:   add              rsp, 32;                   jmp   n730_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n730_statement_begin_α:                                             jmp   n731_keyword_snobol4_α
n730_statement_begin_β:                                             jmp   n734_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n731_keyword_snobol4_α: sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1035_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n732_assign_α
.Lx1035_0:              .quad            .Lx1035_0_s
.Lx1035_0_s:            .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n732_assign_α:          mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax                      # LCASE
                        mov              qword ptr [r9 + 232], rdx; jmp   n733_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n733_statement_end_α:   add              rsp, 16;                   jmp   n734_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n734_statement_begin_α:                                             jmp   n735_lit_string_α
n734_statement_begin_β:                                             jmp   n738_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1041_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n736_assign_α
.Lx1041_0:              .quad            .Lx1041_0_s
.Lx1041_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n736_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax                      # DIGITS
                        mov              qword ptr [r9 + 248], rdx; jmp   n737_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n737_statement_end_α:   add              rsp, 16;                   jmp   n738_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n738_statement_begin_α:                                             jmp   n739_lit_string_α
n738_statement_begin_β:                                             jmp   n743_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1047_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n740_call_α
.Lx1047_0:              .quad            .Lx1047_0_s
.Lx1047_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1049:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1049]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1048_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n738_statement_begin_β
.Lx1048_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n741_assign_α
n740_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n738_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n741_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax                      # V
                        mov              qword ptr [r9 + 264], rdx; jmp   n742_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n742_statement_end_α:   add              rsp, 32;                   jmp   n743_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n743_statement_begin_α:                                             jmp   n744_lit_string_α
n743_statement_begin_β:                                             jmp   n748_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n745_call_α
.Lx1055_0:              .quad            .Lx1055_0_s
.Lx1055_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1057:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1057]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1056_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n743_statement_begin_β
.Lx1056_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n746_assign_α
n745_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n743_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n746_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax                      # I
                        mov              qword ptr [r9 + 280], rdx; jmp   n747_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n747_statement_end_α:   add              rsp, 32;                   jmp   n748_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n748_statement_begin_α:                                             jmp   n749_var_α
n748_statement_begin_β:                                             jmp   n757_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n749_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]                      # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n750_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n750_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax                      # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx; jmp   n751_var_α
#-----------------------------------------------------------------------------------------------------------------------
n751_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]                      # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n752_assign_α
n751_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n748_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n752_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax                      # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx; jmp   n753_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n754_call_α
n753_lit_string_β:      add              rsp, 16;                   jmp   n751_var_β
.Lx1067_0:              .quad            .Lx1067_0_s
.Lx1067_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n754_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1069:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1069]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1068_240
                        add              rsp, 16;                   jmp   n753_lit_string_β
.Lx1068_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n755_assign_α
n754_call_β:            add              rsp, 16;                   jmp   n753_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n755_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax                      # A
                        mov              qword ptr [r9 + 296], rdx; jmp   n756_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n756_statement_end_α:   add              rsp, 64;                   jmp   n757_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n757_statement_begin_α:                                             jmp   n758_var_α
n757_statement_begin_β:                                             jmp   n764_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n758_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]                      # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n759_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n759_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx; jmp   n760_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n761_call_α
n760_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n757_statement_begin_β
.Lx1077_0:              .quad            .Lx1077_0_s
.Lx1077_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n761_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1079:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1079]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1078_240
                        add              rsp, 16;                   jmp   n760_lit_string_β
.Lx1078_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n762_assign_α
n761_call_β:            add              rsp, 16;                   jmp   n760_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n762_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax                      # F
                        mov              qword ptr [r9 + 312], rdx; jmp   n763_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n763_statement_end_α:   add              rsp, 48;                   jmp   n764_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n764_statement_begin_α:                                             jmp   n765_var_α
n764_statement_begin_β:                                             jmp   n771_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n765_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n766_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n766_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx; jmp   n767_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n768_call_α
n767_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n764_statement_begin_β
.Lx1087_0:              .quad            .Lx1087_0_s
.Lx1087_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n768_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1089:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1089]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1088_240
                        add              rsp, 16;                   jmp   n767_lit_string_β
.Lx1088_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n769_assign_α
n768_call_β:            add              rsp, 16;                   jmp   n767_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n769_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax                      # T
                        mov              qword ptr [r9 + 328], rdx; jmp   n770_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_end_α:   add              rsp, 48;                   jmp   n771_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n771_statement_begin_α:                                             jmp   n772_var_α
n771_statement_begin_β:                                             jmp   n778_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n772_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n773_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax                      # PAT$5$V0
                        mov              qword ptr [r9 + 584], rdx; jmp   n774_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n775_call_α
n774_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n771_statement_begin_β
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n775_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1099:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1099]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1098_240
                        add              rsp, 16;                   jmp   n774_lit_string_β
.Lx1098_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n776_assign_α
n775_call_β:            add              rsp, 16;                   jmp   n774_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n776_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax                      # X
                        mov              qword ptr [r9 + 344], rdx; jmp   n777_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n777_statement_end_α:   add              rsp, 48;                   jmp   n778_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_begin_α:                                             jmp   n779_lit_string_α
n778_statement_begin_β:                                             jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n780_call_α
.Lx1105_0:              .quad            .Lx1105_0_s
.Lx1105_0_s:            .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n780_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1107:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1107]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1106_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n778_statement_begin_β
.Lx1106_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n781_assign_α
n780_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n778_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # eol
                        mov              qword ptr [r9 + 360], rdx; jmp   n782_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n782_statement_end_α:   add              rsp, 32;                   jmp   n783_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_begin_α:                                             jmp   n784_var_α
n783_statement_begin_β:                                             jmp   n794_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n785_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n785_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax                      # PAT$7$V2
                        mov              qword ptr [r9 + 632], rdx; jmp   n786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]                      # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n787_assign_α
n786_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n783_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n787_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax                      # PAT$7$V1
                        mov              qword ptr [r9 + 616], rdx; jmp   n788_var_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n789_assign_α
n788_var_β:             add              rsp, 16;                   jmp   n786_var_β
#-----------------------------------------------------------------------------------------------------------------------
n789_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax                      # PAT$7$V0
                        mov              qword ptr [r9 + 600], rdx; jmp   n790_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n791_call_α
n790_lit_string_β:      add              rsp, 16;                   jmp   n788_var_β
.Lx1119_0:              .quad            .Lx1119_0_s
.Lx1119_0_s:            .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n791_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1121:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1121]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1120_240
                        add              rsp, 16;                   jmp   n790_lit_string_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n792_assign_α
n791_call_β:            add              rsp, 16;                   jmp   n790_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n792_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax                      # C
                        mov              qword ptr [r9 + 376], rdx; jmp   n793_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_end_α:   add              rsp, 80;                   jmp   n794_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n794_statement_begin_α:                                             jmp   n795_lit_string_α
n794_statement_begin_β:                                             jmp   n799_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n796_lit_integer_α
.Lx1127_0:              .quad            .Lx1127_0_s
.Lx1127_0_s:            .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n797_call_α
n796_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n794_statement_begin_β
.Lx1128_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n797_call_α:            sub              rsp, 16
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
.Lrkfnzd1130:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1130]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104;                  jne   .Lx1129_240
                        add              rsp, 16;                   jmp   n796_lit_integer_β
.Lx1129_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n798_statement_end_α
n797_call_β:            add              rsp, 16;                   jmp   n796_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n798_statement_end_α:   add              rsp, 48;                   jmp   n799_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n799_statement_begin_α:                                             jmp   n800_lit_integer_α
n799_statement_begin_β:                                             jmp   n804_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n801_call_α
.Lx1135_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n801_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd395:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd395]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1136_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n799_statement_begin_β
.Lx1136_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n802_assign_α
n801_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n799_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n802_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # nl
                        mov              qword ptr [r9 + 408], rdx; jmp   n803_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n803_statement_end_α:   add              rsp, 32;                   jmp   n804_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n804_statement_begin_α:                                             jmp   n805_call_α
n804_statement_begin_β:                                             jmp   n808_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n805_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1143:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1143]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1142_240
                        add              rsp, 16;                   jmp   n804_statement_begin_β
.Lx1142_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n806_assign_α
n805_call_β:            add              rsp, 16;                   jmp   n804_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n806_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax                      # vars
                        mov              qword ptr [r9 + 216], rdx; jmp   n807_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n807_statement_end_α:   add              rsp, 16;                   jmp   n808_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n808_statement_begin_α:                                             jmp   n809_var_α
n808_statement_begin_β:                                             jmp   n815_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n809_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n810_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1150_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n811_subscript_α
n810_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n808_statement_begin_β
.Lx1150_0:              .quad            .Lx1150_0_s
.Lx1150_0_s:            .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n811_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1151_240
                        add              rsp, 16;                   jmp   n810_lit_string_β
.Lx1151_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n812_lit_integer_α
n811_subscript_β:       add              rsp, 16;                   jmp   n810_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n813_assign_var_α
n812_lit_integer_β:     add              rsp, 16;                   jmp   n811_subscript_β
.Lx1152_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n813_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1153_240
                        add              rsp, 16;                   jmp   n812_lit_integer_β
.Lx1153_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n814_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n814_statement_end_α:   add              rsp, 80;                   jmp   n815_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n815_statement_begin_α:                                             jmp   n816_var_α
n815_statement_begin_β:                                             jmp   n822_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n816_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n817_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n818_subscript_α
n817_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n815_statement_begin_β
.Lx1159_0:              .quad            .Lx1159_0_s
.Lx1159_0_s:            .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n818_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1160_240
                        add              rsp, 16;                   jmp   n817_lit_string_β
.Lx1160_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n819_lit_integer_α
n818_subscript_β:       add              rsp, 16;                   jmp   n817_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n820_assign_var_α
n819_lit_integer_β:     add              rsp, 16;                   jmp   n818_subscript_β
.Lx1161_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n820_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1162_240
                        add              rsp, 16;                   jmp   n819_lit_integer_β
.Lx1162_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n821_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n821_statement_end_α:   add              rsp, 80;                   jmp   n822_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n822_statement_begin_α:                                             jmp   n823_var_α
n822_statement_begin_β:                                             jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n823_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n824_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1168_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n825_subscript_α
n824_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                   jmp   n822_statement_begin_β
.Lx1168_0:              .quad            .Lx1168_0_s
.Lx1168_0_s:            .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n825_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1169_240
                        add              rsp, 16;                   jmp   n824_lit_string_β
.Lx1169_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n826_lit_integer_α
n825_subscript_β:       add              rsp, 16;                   jmp   n824_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n827_assign_var_α
n826_lit_integer_β:     add              rsp, 16;                   jmp   n825_subscript_β
.Lx1170_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n827_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1171_240
                        add              rsp, 16;                   jmp   n826_lit_integer_β
.Lx1171_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n828_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_end_α:   add              rsp, 80;                   jmp   n829_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n829_statement_begin_α:                                             jmp   n830_var_α
n829_statement_begin_β:                                             jmp   n877_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n830_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1176_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_GET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1176_240
                        add              rsp, 16;                   jmp   n829_statement_begin_β
.Lx1176_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n831_assign_α
.Lx1176_0:              .quad            .Lx1176_0_s
.Lx1176_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n831_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # line
                        mov              qword ptr [r9 + 424], rdx; jmp   n832_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n832_statement_end_α:   add              rsp, 16;                   jmp   n833_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n833_statement_begin_α:                                             jmp   n834_var_α
n833_statement_begin_β:                                             jmp   n841_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n835_var_α
#-----------------------------------------------------------------------------------------------------------------------
n835_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]                      # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n836_binop_α
n835_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n833_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n836_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n837_var_α
n836_binop_β:           add              rsp, 16;                   jmp   n835_var_β
#-----------------------------------------------------------------------------------------------------------------------
n837_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n838_binop_α
n837_var_β:             add              rsp, 16;                   jmp   n836_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n838_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n839_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx; jmp   n840_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n840_statement_end_α:   add              rsp, 80;                   jmp   n841_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n841_statement_begin_α:                                             jmp   n842_var_α
n841_statement_begin_β:                                             jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n843_call_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1194:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1194]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1193_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n841_statement_begin_β
.Lx1193_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n844_lit_integer_α
n843_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n841_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1195_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n845_coerce_numeric_α
n844_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                   jmp   n841_statement_begin_β
.Lx1195_0:              .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n845_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5;                    je    .Lx1197_1
                        cmp              eax, 3;                    jne   .Lx1197_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3;                    jne   .Lx1197_0
.Lx1197_1:              mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax;  jmp   n846_coerce_numeric_α
.Lx1197_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n846_coerce_numeric_α
n845_coerce_numeric_β:  add              rsp, 16;                   jmp   n844_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n846_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5;                    je    .Lx1199_1
                        cmp              eax, 3;                    jne   .Lx1199_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3;                    jne   .Lx1199_0
.Lx1199_1:              mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax;  jmp   n847_cmp_test_α
.Lx1199_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n847_cmp_test_α
n846_coerce_numeric_β:  add              rsp, 16;                   jmp   n845_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n847_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cmp_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jg    .Lx1201_240
                        add              rsp, 16;                   jmp   n846_coerce_numeric_β
.Lx1201_240:                                                        jmp   n848_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n848_statement_end_α:   add              rsp, 96;                   jmp   n849_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n849_statement_begin_α:                                             jmp   n850_var_α
n849_statement_begin_β:                                             jmp   n855_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n851_var_α
#-----------------------------------------------------------------------------------------------------------------------
n851_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n852_binop_α
n851_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n849_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n852_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n853_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n853_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx; jmp   n854_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n854_statement_end_α:   add              rsp, 48;                   jmp   n855_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n855_statement_begin_α:                                             jmp   n856_lit_string_α
n855_statement_begin_β:                                             jmp   n859_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n856_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n857_assign_α
.Lx1214_0:              .quad            .Lx1214_0_s
.Lx1214_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n857_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx; jmp   n858_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n858_statement_end_α:   add              rsp, 16;                   jmp   n859_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n859_statement_begin_α:                                             jmp   n860_var_α
n859_statement_begin_β:                                             jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n861_call_α
#-----------------------------------------------------------------------------------------------------------------------
n861_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1222:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1222]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16
                        cmp              eax, 104;                  jne   .Lx1221_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n859_statement_begin_β
.Lx1221_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n862_lit_integer_α
n861_call_β:            add              rsp, 16
                        add              rsp, 16;                   jmp   n859_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n862_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1223_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n863_coerce_numeric_α
n862_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                   jmp   n859_statement_begin_β
.Lx1223_0:              .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n863_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5;                    je    .Lx1225_1
                        cmp              eax, 3;                    jne   .Lx1225_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3;                    jne   .Lx1225_0
.Lx1225_1:              mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax;  jmp   n864_coerce_numeric_α
.Lx1225_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n864_coerce_numeric_α
n863_coerce_numeric_β:  add              rsp, 16;                   jmp   n862_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n864_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5;                    je    .Lx1227_1
                        cmp              eax, 3;                    jne   .Lx1227_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3;                    jne   .Lx1227_0
.Lx1227_1:              mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax;  jmp   n865_cmp_test_α
.Lx1227_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n865_cmp_test_α
n864_coerce_numeric_β:  add              rsp, 16;                   jmp   n863_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n865_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cmp_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  jg    .Lx1229_240
                        add              rsp, 16;                   jmp   n864_coerce_numeric_β
.Lx1229_240:                                                        jmp   n866_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n866_statement_end_α:   add              rsp, 96;                   jmp   n867_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n867_statement_begin_α:                                             jmp   n868_var_α
n867_statement_begin_β:                                             jmp   n873_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n870_binop_α
n869_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n867_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n870_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n871_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n871_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx; jmp   n872_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_end_α:   add              rsp, 48;                   jmp   n873_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n873_statement_begin_α:                                             jmp   n874_lit_string_α
n873_statement_begin_β:                                             jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n874_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n875_assign_α
.Lx1242_0:              .quad            .Lx1242_0_s
.Lx1242_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n875_assign_α:          mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx; jmp   n876_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n876_statement_end_α:   add              rsp, 16;                   jmp   n829_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n877_statement_begin_α:                                             jmp   n878_var_α
n877_statement_begin_β:                                             jmp   n885_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n878_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n880_binop_α
n879_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n877_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n880_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n881_var_α
n880_binop_β:           add              rsp, 16;                   jmp   n879_var_β
#-----------------------------------------------------------------------------------------------------------------------
n881_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n882_binop_α
n881_var_β:             add              rsp, 16;                   jmp   n880_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n882_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n883_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx; jmp   n884_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n884_statement_end_α:   add              rsp, 80;                   jmp   n885_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n885_statement_begin_α:                                             jmp   n886_call_α
n885_statement_begin_β:                                             jmp   n889_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n886_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1259:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1259]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1258_240
                        add              rsp, 16;                   jmp   n885_statement_begin_β
.Lx1258_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n887_assign_α
n886_call_β:            add              rsp, 16;                   jmp   n885_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n887_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax                      # t0
                        mov              qword ptr [r9 + 488], rdx; jmp   n888_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n888_statement_end_α:   add              rsp, 16;                   jmp   n889_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n889_statement_begin_α:                                             jmp   n890_var_α
n889_statement_begin_β:                                             jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n891_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n892_assign_α
n891_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1267_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n893_match_begin_α
n892_assign_β:                                                      jmp   n891_var_β
.Lx1267_0:              .quad            .Lx1267_0_s
.Lx1267_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n893_match_begin_α:     mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 24], r13                      # outer_Σ
                        mov              qword ptr [rsp + 32], r14                      # outer_δ
                        mov              qword ptr [rsp + 40], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 48], rax                      # cap_gen
                        mov              qword ptr [rsp + 16], rsp                      # old____
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rsp + 8], rsp                       # zls2_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1269_0:              mov              r14d, dword ptr [rsp + 0]; jmp   n894_match_defer_α
n893_match_begin_β:     add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                 jg    .Lx1269_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx1269_1
                                                                    jmp   .Lx1269_0
.Lx1269_1:
n893_match_begin_af:    sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 48]                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 64;                   jmp   n892_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n894_match_defer_α:     lea              rdi, [rip + .S20]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax;                  jz    .Lx1270_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx1270_4]
                        lea              r11, [rip + .Lx1270_5];    jmp   rax
.Lx1270_4:                                                          jmp   n895_match_end_α
.Lx1270_5:                                                          jmp   n893_match_begin_β
.Lx1270_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S20]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1270_2:              test             rax, rax;                  je    .Lx1270_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1270_7]
                        lea              rdx, [rip + .Lx1270_8];    jmp   rax
.Lx1270_7:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1270_2
.Lx1270_8:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1270_2
.Lx1270_3:              add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax;                  js    n893_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1270_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n895_match_end_α
.Lx1270_6:              add              rsp, 16;                   jmp   n893_match_begin_β
n894_match_defer_β:                                                 jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n895_match_end_α:       mov              r8, r12
.Lx1272_9:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1272_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx1272_5:              sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx1272_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx1272_1:              test             rax, rax;                  je    .Lx1272_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx1272_3]
                        lea              rdx, [rip + .Lx1272_4];    jmp   rax
.Lx1272_3:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1272_1
.Lx1272_4:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx1272_1
.Lx1272_2:              mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx1272_10:             sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx1272_10
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n896_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n896_statement_end_α:   add              rsp, 96;                   jmp   n897_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n897_statement_begin_α:                                             jmp   n898_call_α
n897_statement_begin_β:                                             jmp   n901_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1278:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1278]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1277_240
                        add              rsp, 16;                   jmp   n897_statement_begin_β
.Lx1277_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n899_assign_α
n898_call_β:            add              rsp, 16;                   jmp   n897_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx; jmp   n900_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n900_statement_end_α:   add              rsp, 16;                   jmp   n901_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n901_statement_begin_α:                                             jmp   n902_lit_string_α
n901_statement_begin_β:                                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n902_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1284_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n903_var_α
.Lx1284_0:              .quad            .Lx1284_0_s
.Lx1284_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n904_var_α
n903_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n901_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n904_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n905_binop_α
n904_var_β:             add              rsp, 16;                   jmp   n903_var_β
#-----------------------------------------------------------------------------------------------------------------------
n905_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx1287_240
                        add              rsp, 16;                   jmp   n904_var_β
.Lx1287_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n906_binop_α
n905_binop_β:           add              rsp, 16;                   jmp   n904_var_β
#-----------------------------------------------------------------------------------------------------------------------
n906_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n907_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n907_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1289_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n908_statement_end_α
.Lx1289_0:              .quad            .Lx1289_0_s
.Lx1289_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n908_statement_end_α:   add              rsp, 80;                   jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n909_statement_begin_α:                                             jmp   n910_call_α
n909_statement_begin_β:                                             jmp   n913_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n910_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1295:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1295]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104;                  jne   .Lx1294_240
                        add              rsp, 16;                   jmp   n909_statement_begin_β
.Lx1294_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n911_assign_α
n910_call_β:            add              rsp, 16;                   jmp   n909_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_α:          mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx; jmp   n912_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n912_statement_end_α:   add              rsp, 16;                   jmp   n913_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n913_statement_begin_α:                                             jmp   n914_lit_string_α
n913_statement_begin_β:                                             jmp   n917_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n914_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1301_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n915_assign_α
.Lx1301_0:              .quad            .Lx1301_0_s
.Lx1301_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n915_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1302_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n916_statement_end_α
.Lx1302_0:              .quad            .Lx1302_0_s
.Lx1302_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n916_statement_end_α:   add              rsp, 16;                   jmp   n917_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n917_statement_begin_α:                                             jmp   n918_lit_string_α
n917_statement_begin_β:                                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1307_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n919_var_α
.Lx1307_0:              .quad            .Lx1307_0_s
.Lx1307_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n919_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n920_var_α
n919_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n917_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n921_binop_α
n920_var_β:             add              rsp, 16;                   jmp   n919_var_β
#-----------------------------------------------------------------------------------------------------------------------
n921_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                  jne   .Lx1310_240
                        add              rsp, 16;                   jmp   n920_var_β
.Lx1310_240:            mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n922_binop_α
n921_binop_β:           add              rsp, 16;                   jmp   n920_var_β
#-----------------------------------------------------------------------------------------------------------------------
n922_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n923_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n923_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1312_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n924_statement_end_α
.Lx1312_0:              .quad            .Lx1312_0_s
.Lx1312_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n924_statement_end_α:   add              rsp, 80;                   jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n925_goto_α:                                                        jmp   n688_statement_begin_α
n925_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n926_goto_α:                                                        jmp   n693_statement_begin_α
n926_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n927_goto_α:                                                        jmp   n928_statement_begin_α
n927_goto_β:                                                        jmp   main_ω
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n928_statement_begin_α:                                             jmp   n929_var_α
n928_statement_begin_β:                                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n930_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n930_assign_α:          mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx;  jmp   n931_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n931_statement_end_α:                                               jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n932_goto_α:                                                        jmp   n698_statement_begin_α
n932_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n933_goto_α:                                                        jmp   n703_statement_begin_α
n933_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n934_goto_α:                                                        jmp   n708_statement_begin_α
n934_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n935_goto_α:                                                        jmp   n713_statement_begin_α
n935_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n936_goto_α:                                                        jmp   n718_statement_begin_α
n936_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n937_goto_α:                                                        jmp   n723_statement_begin_α
n937_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n938_goto_α:                                                        jmp   n829_statement_begin_α
n938_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n939_goto_α:                                                        jmp   n877_statement_begin_α
n939_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n940_goto_α:                                                        jmp   n909_statement_begin_α
n940_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 lea              rdi, [rip + .S21]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                lea              rdi, [rip + .S22]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 0
                        mov              rax, qword ptr [rip + .Lx1337_0]
                        mov              qword ptr [rsp + 40], rax; jmp   n944_call_α
.Lx1337_0:              .quad            .Lx1337_0_s
.Lx1337_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n944_call_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1339:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1339]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                  je    FRETURN
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   RETURN
n944_call_β:                                                        jmp   FRETURN
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
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*NEG"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "T"
.S9:                    .string          "*DIV"
.S10:                   .string          "*MUL"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "*SUB"
.S13:                   .string          "*ADD"
.S14:                   .string          "IR_MATCH_ARBNO: unreachable beta (defer-unsafe decline)"
.S15:                   .string          "IR_MATCH_ARBNO: body contains a suspend-capable DEFER (pat_static=0) -- anchor-relative slot not yet implemented (W-4)"
.S16:                   .string          "PAT$7$V0"
.S17:                   .string          "PAT$7$V1"
.S18:                   .string          "PAT$7$V2"
.S19:                   .string          "*EMIT"
.S20:                   .string          "PATV$0"
.S21:                   .string          "BOMB-RETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S22:                   .string          "BOMB-FRETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
                        .text
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
