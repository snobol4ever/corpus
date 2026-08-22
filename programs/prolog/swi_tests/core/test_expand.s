                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__true$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
true$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx4_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx4_101
.Lx4_102:               lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx4_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx4_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx4_101
.Lx4_100:               lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx4_101:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    true$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_move_label_α
n0_call_builtin_prolog_β:
                                                                              jmp   true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_move_label_α:        lea              rax, [rip + n3_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   true$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    true$2F0_ω
                                                                              jmp   rax
n2_disjunction_β:                                                             jmp   true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    true$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   true$2F0_ω
n3_call_builtin_prolog_β:
                                                                              jmp   true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
true$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
true$2F0_β:
                                                                              jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
true$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
true$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
true$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx10_2]
                        lea              rdx, [rip + .Lx10_3];                jmp   FN__true$2F0
.Lx10_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx10_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F1:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F1_α_body:
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx18_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx18_101
.Lx18_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx18_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx18_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx18_101
.Lx18_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx18_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 25
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n14_call_builtin_prolog_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx22_2];      jmp   .Lx22_3
.Lx22_2:                .quad            .Lx22_2_s
.Lx22_2_s:              .string          "goal_expansion_local_pred"
.Lx22_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_call_proc_staged_α
n14_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α: mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx24_7]
                        push             rax
                        mov              edi, 14
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx24_1
                        lea              rcx, [rip + .Lx24_3]
                        lea              rdx, [rip + .Lx24_4];                jmp   rax
.Lx24_3:                mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx24_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx24_2
.Lx24_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx24_2
.Lx24_4:                mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx24_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx24_2
.Lx24_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx24_2
.Lx24_1:                call             rt_faildescr@PLT
.Lx24_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx24_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx24_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                                                                              jmp   n16_suspend_α
n15_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n17_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 16
                        mov              r8d, 160
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 14
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n17_call_builtin_prolog_α
                        lea              r11, [rip + .Lx24_7]
                        push             r11
                        lea              rcx, [rip + .Lx24_3]
                        lea              rdx, [rip + .Lx24_4];                jmp   rax
.Lx24_7:                add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                                                                              jmp   n16_suspend_α
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "test_foo_bar/0"
#-----------------------------------------------------------------------------------------------------------------------
n16_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx26_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx26_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n16_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n16_suspend_β:                                                                jmp   n15_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test$2F1_ω
n17_call_builtin_prolog_β:
                                                                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_β:
                                                                              jmp   n16_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx27_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx27_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__clause$2F2:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
clause$2F2_α_body:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n30_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_gen_α: mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 96], 0
.Lx36_60:               .section         .rodata
.Lbynamegenfn14:        .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn14]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_suspend_α
n30_call_builtin_gen_β:                                                       jmp   .Lx36_60
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx38_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx38_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n31_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n31_suspend_β:                                                                jmp   n30_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n30_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx38_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx38_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__current_predicate$2F1:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
current_predicate$2F1_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n40_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_gen_α: mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], 0
.Lx44_60:               .section         .rodata
.Lbynamegenfn17:        .string          "$current_predicate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn17]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    current_predicate$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_suspend_α
n40_call_builtin_gen_β:                                                       jmp   .Lx44_60
#-----------------------------------------------------------------------------------------------------------------------
n41_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx46_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx46_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n41_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   current_predicate$2F1_γ
n41_suspend_β:                                                                jmp   n40_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_predicate$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
current_predicate$2F1_β:
                                                                              jmp   n40_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_predicate$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx46_50
                        mov              qword ptr [rsp + 96], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx46_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
current_predicate$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 3136
                        mov              qword ptr [rsp + 3112], rcx
                        mov              qword ptr [rsp + 3120], rdx
                        mov              qword ptr [rsp + 3128], rsp
                        mov              rdi, rsp
                        mov              esi, 3024
                        mov              edx, 3104
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F2_α_body:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx146_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx146_101
.Lx146_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx146_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx146_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx146_101
.Lx146_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx146_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 8
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n50_call_builtin_prolog_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        lea              rdi, [rsp + 2960]
                        mov              rsi, qword ptr [rip + .Lx150_2];     jmp   .Lx150_3
.Lx150_2:               .quad            .Lx150_2_s
.Lx150_2_s:             .string          "cond_dcg"
.Lx150_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n60_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_var_ref_α
n50_call_builtin_prolog_β:
                                                                              jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 4
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n53_call_builtin_prolog_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        lea              rdi, [rsp + 2880]
                        mov              rsi, qword ptr [rip + .Lx154_2];     jmp   .Lx154_3
.Lx154_2:               .quad            .Lx154_2_s
.Lx154_2_s:             .string          "true"
.Lx154_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n60_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                                                                              jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 2
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n55_lit_string_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 4
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n56_lit_integer_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n57_call_builtin_prolog_α
.Lx157_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2792], rax
                        lea              rdi, [rsp + 2784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n59_suspend_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_call_proc_staged_α
n57_call_builtin_prolog_β:
                                                                              jmp   n59_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α: mov              qword ptr [rsp + 2704], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx160_20
                        mov              rax, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx160_21
.Lx160_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx160_21:              lea              rax, [rip + .Lx160_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx160_1
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4];               jmp   rax
.Lx160_3:               mov              qword ptr [rsp + 2712], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2704]
                        test             rax, rax;                            jne   .Lx160_5
                        mov              qword ptr [rsp + 2704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx160_2
.Lx160_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx160_2
.Lx160_4:               mov              rax, qword ptr [rsp + 2704]
                        test             rax, rax;                            jne   .Lx160_6
                        mov              qword ptr [rsp + 2704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx160_2
.Lx160_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx160_2
.Lx160_1:               call             rt_faildescr@PLT
.Lx160_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx160_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
.Lx160_29:              mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n59_suspend_α
                                                                              jmp   n60_call_builtin_prolog_α
n58_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2704], 0
                        lea              rdi, [rsp + 2720]
                        lea              rsi, [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n59_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n59_suspend_α
                        lea              r11, [rip + .Lx160_7]
                        push             r11
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4];               jmp   rax
.Lx160_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n59_suspend_α
                                                                              jmp   n60_call_builtin_prolog_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "current_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n59_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx162_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx162_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n59_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n59_suspend_β:                                                                jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 8
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n63_call_builtin_prolog_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        lea              rdi, [rsp + 2560]
                        mov              rsi, qword ptr [rip + .Lx167_2];     jmp   .Lx167_3
.Lx167_2:               .quad            .Lx167_2_s
.Lx167_2_s:             .string          "make_dcg"
.Lx167_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 2
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n66_var_ref_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n68_var_ref_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3056]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3072]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_call_builtin_prolog_α
n70_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_call_builtin_prolog_α
n71_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        lea              r8, [rsp + 2256]
.Lx180_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx180_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              esi, 1;                              jne   .Lx180_55
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_55:              cmp              esi, 2;                              jne   .Lx180_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_56:              cmp              al, 72;                              jne   .Lx180_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              rax, r8;                             je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_41:              lea              r9, [rsp + 2272]
.Lx180_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx180_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              esi, 1;                              jne   .Lx180_57
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_57:              cmp              esi, 2;                              jne   .Lx180_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_58:              cmp              al, 72;                              jne   .Lx180_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              rax, r9;                             je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_43:              cmp              r8, r9;                              je    .Lx180_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx180_44
                        cmp              al, 104;                             je    .Lx180_44
                        cmp              al, 72;                              jne   .Lx180_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx180_44
                                                                              jmp   .Lx180_45
.Lx180_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx180_53
                        cmp              al, 104;                             je    .Lx180_53
                        cmp              al, 72;                              jne   .Lx180_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_53
                                                                              jmp   .Lx180_46
.Lx180_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx180_51
.Lx180_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx180_47
                        cmp              al, 104;                             je    .Lx180_47
                        cmp              al, 72;                              jne   .Lx180_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_47
                                                                              jmp   .Lx180_48
.Lx180_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx180_51
.Lx180_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx180_49
                        cmp              dl, 80;                              je    .Lx180_53
                                                                              jmp   .Lx180_52
.Lx180_49:              cmp              dl, 80;                              je    .Lx180_52
                        cmp              cl, 5;                               je    .Lx180_53
                        cmp              dl, 5;                               je    .Lx180_53
                        cmp              cl, 3;                               jne   .Lx180_50
                        cmp              dl, 3;                               jne   .Lx180_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx180_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx180_51
                                                                              jmp   .Lx180_52
.Lx180_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx180_53
.Lx180_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx180_54
.Lx180_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx180_54
.Lx180_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx180_54:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_lit_string_α
n72_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n74_var_ref_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3056]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3072]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                                                                              jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n78_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α: mov              qword ptr [rsp + 2064], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx190_20
                        mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx190_21
.Lx190_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx190_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx190_22
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx190_23
.Lx190_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx190_23:              lea              rax, [rip + .Lx190_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx190_1
                        lea              rcx, [rip + .Lx190_3]
                        lea              rdx, [rip + .Lx190_4];               jmp   rax
.Lx190_3:               mov              qword ptr [rsp + 2072], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2064]
                        test             rax, rax;                            jne   .Lx190_5
                        mov              qword ptr [rsp + 2064], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx190_2
.Lx190_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx190_2
.Lx190_4:               mov              rax, qword ptr [rsp + 2064]
                        test             rax, rax;                            jne   .Lx190_6
                        mov              qword ptr [rsp + 2064], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx190_2
.Lx190_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx190_2
.Lx190_1:               call             rt_faildescr@PLT
.Lx190_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx190_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
.Lx190_29:              mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                                                                              jmp   n79_suspend_α
n78_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2064], 0
                        lea              rdi, [rsp + 2080]
                        lea              rsi, [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n80_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n80_call_builtin_prolog_α
                        lea              r11, [rip + .Lx190_7]
                        push             r11
                        lea              rcx, [rip + .Lx190_3]
                        lea              rdx, [rip + .Lx190_4];               jmp   rax
.Lx190_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                                                                              jmp   n79_suspend_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n79_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx192_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx192_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n79_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n79_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n79_suspend_β:                                                                jmp   n78_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 22
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n83_call_builtin_prolog_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        lea              rdi, [rsp + 1920]
                        mov              rsi, qword ptr [rip + .Lx197_2];     jmp   .Lx197_3
.Lx197_2:               .quad            .Lx197_2_s
.Lx197_2_s:             .string          "chained_term_expansion"
.Lx197_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                                                                              jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 2
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n86_var_ref_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 4
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n88_call_builtin_prolog_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                                                                              jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        lea              r8, [rsp + 1728]
.Lx205_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx205_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx205_41
                        cmp              esi, 1;                              jne   .Lx205_55
                        mov              r8, rax;                             jmp   .Lx205_40
.Lx205_55:              cmp              esi, 2;                              jne   .Lx205_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx205_41
                        mov              r8, rax;                             jmp   .Lx205_40
.Lx205_56:              cmp              al, 72;                              jne   .Lx205_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx205_41
                        cmp              rax, r8;                             je    .Lx205_41
                        mov              r8, rax;                             jmp   .Lx205_40
.Lx205_41:              lea              r9, [rsp + 1744]
.Lx205_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx205_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx205_43
                        cmp              esi, 1;                              jne   .Lx205_57
                        mov              r9, rax;                             jmp   .Lx205_42
.Lx205_57:              cmp              esi, 2;                              jne   .Lx205_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx205_43
                        mov              r9, rax;                             jmp   .Lx205_42
.Lx205_58:              cmp              al, 72;                              jne   .Lx205_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx205_43
                        cmp              rax, r9;                             je    .Lx205_43
                        mov              r9, rax;                             jmp   .Lx205_42
.Lx205_43:              cmp              r8, r9;                              je    .Lx205_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx205_44
                        cmp              al, 104;                             je    .Lx205_44
                        cmp              al, 72;                              jne   .Lx205_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx205_44
                                                                              jmp   .Lx205_45
.Lx205_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx205_53
                        cmp              al, 104;                             je    .Lx205_53
                        cmp              al, 72;                              jne   .Lx205_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx205_53
                                                                              jmp   .Lx205_46
.Lx205_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx205_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx205_51
.Lx205_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx205_47
                        cmp              al, 104;                             je    .Lx205_47
                        cmp              al, 72;                              jne   .Lx205_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx205_47
                                                                              jmp   .Lx205_48
.Lx205_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx205_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx205_51
.Lx205_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx205_49
                        cmp              dl, 80;                              je    .Lx205_53
                                                                              jmp   .Lx205_52
.Lx205_49:              cmp              dl, 80;                              je    .Lx205_52
                        cmp              cl, 5;                               je    .Lx205_53
                        cmp              dl, 5;                               je    .Lx205_53
                        cmp              cl, 3;                               jne   .Lx205_50
                        cmp              dl, 3;                               jne   .Lx205_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx205_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx205_51
                                                                              jmp   .Lx205_52
.Lx205_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx205_53
.Lx205_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx205_54
.Lx205_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx205_54
.Lx205_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx205_54:              mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_lit_string_α
n89_call_builtin_prolog_β:
                                                                              jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 7
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n91_var_ref_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n92_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α: mov              qword ptr [rsp + 1648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx210_20
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx210_21
.Lx210_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx210_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx210_22
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx210_23
.Lx210_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx210_23:              lea              rax, [rip + .Lx210_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx210_1
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4];               jmp   rax
.Lx210_3:               mov              qword ptr [rsp + 1656], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1648]
                        test             rax, rax;                            jne   .Lx210_5
                        mov              qword ptr [rsp + 1648], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx210_2
.Lx210_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx210_2
.Lx210_4:               mov              rax, qword ptr [rsp + 1648]
                        test             rax, rax;                            jne   .Lx210_6
                        mov              qword ptr [rsp + 1648], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx210_2
.Lx210_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx210_2
.Lx210_1:               call             rt_faildescr@PLT
.Lx210_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx210_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
.Lx210_29:              mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                                                                              jmp   n93_suspend_α
n92_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1648], 0
                        lea              rdi, [rsp + 1664]
                        lea              rsi, [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n94_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n94_call_builtin_prolog_α
                        lea              r11, [rip + .Lx210_7]
                        push             r11
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4];               jmp   rax
.Lx210_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                                                                              jmp   n93_suspend_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n93_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx212_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx212_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n93_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n93_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n93_suspend_β:                                                                jmp   n92_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_var_ref_α
n94_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 8
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n97_call_builtin_prolog_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        lea              rdi, [rsp + 1504]
                        mov              rsi, qword ptr [rip + .Lx217_2];     jmp   .Lx217_3
.Lx217_2:               .quad            .Lx217_2_s
.Lx217_2_s:             .string          "meta_arg"
.Lx217_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n106_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                              jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n100_lit_string_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 4
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n101_lit_string_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 2
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n102_call_builtin_prolog_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n106_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_call_builtin_prolog_α
n102_call_builtin_prolog_β:
                                                                              jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        lea              r8, [rsp + 1312]
.Lx224_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx224_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              esi, 1;                              jne   .Lx224_55
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_55:              cmp              esi, 2;                              jne   .Lx224_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_56:              cmp              al, 72;                              jne   .Lx224_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              rax, r8;                             je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_41:              lea              r9, [rsp + 1328]
.Lx224_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx224_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              esi, 1;                              jne   .Lx224_57
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_57:              cmp              esi, 2;                              jne   .Lx224_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_58:              cmp              al, 72;                              jne   .Lx224_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              rax, r9;                             je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_43:              cmp              r8, r9;                              je    .Lx224_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx224_44
                        cmp              al, 104;                             je    .Lx224_44
                        cmp              al, 72;                              jne   .Lx224_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx224_44
                                                                              jmp   .Lx224_45
.Lx224_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx224_53
                        cmp              al, 104;                             je    .Lx224_53
                        cmp              al, 72;                              jne   .Lx224_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_53
                                                                              jmp   .Lx224_46
.Lx224_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx224_51
.Lx224_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx224_47
                        cmp              al, 104;                             je    .Lx224_47
                        cmp              al, 72;                              jne   .Lx224_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_47
                                                                              jmp   .Lx224_48
.Lx224_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx224_51
.Lx224_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx224_49
                        cmp              dl, 80;                              je    .Lx224_53
                                                                              jmp   .Lx224_52
.Lx224_49:              cmp              dl, 80;                              je    .Lx224_52
                        cmp              cl, 5;                               je    .Lx224_53
                        cmp              dl, 5;                               je    .Lx224_53
                        cmp              cl, 3;                               jne   .Lx224_50
                        cmp              dl, 3;                               jne   .Lx224_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx224_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx224_51
                                                                              jmp   .Lx224_52
.Lx224_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx224_53
.Lx224_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx224_54
.Lx224_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx224_54
.Lx224_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx224_54:              mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n106_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_call_proc_staged_α
n103_call_builtin_prolog_β:
                                                                              jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        mov              qword ptr [rsp + 1264], 0
                        lea              rax, [rip + .Lx226_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx226_1
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4];               jmp   rax
.Lx226_3:               mov              qword ptr [rsp + 1272], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1264]
                        test             rax, rax;                            jne   .Lx226_5
                        mov              qword ptr [rsp + 1264], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx226_2
.Lx226_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx226_2
.Lx226_4:               mov              rax, qword ptr [rsp + 1264]
                        test             rax, rax;                            jne   .Lx226_6
                        mov              qword ptr [rsp + 1264], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx226_2
.Lx226_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx226_2
.Lx226_1:               call             rt_faildescr@PLT
.Lx226_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx226_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
.Lx226_29:              mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n106_call_builtin_prolog_α
                                                                              jmp   n105_suspend_α
n104_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1264], 0
                        lea              rdi, [rsp + 1280]
                        lea              rsi, [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n106_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              ecx, 16
                        mov              r8d, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 7
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n106_call_builtin_prolog_α
                        lea              r11, [rip + .Lx226_7]
                        push             r11
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4];               jmp   rax
.Lx226_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n106_call_builtin_prolog_α
                                                                              jmp   n105_suspend_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "e_not/0"
#-----------------------------------------------------------------------------------------------------------------------
n105_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx228_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx228_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n105_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n105_suspend_β:                                                               jmp   n104_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 11
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n109_call_builtin_prolog_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              rsi, qword ptr [rip + .Lx233_2];     jmp   .Lx233_3
.Lx233_2:               .quad            .Lx233_2_s
.Lx233_2_s:             .string          "expand_once"
.Lx233_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                              jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 3
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n112_lit_string_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n113_var_ref_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n115_lit_integer_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n116_lit_string_α
.Lx241_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n117_lit_integer_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n118_lit_string_α
.Lx243_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n119_call_builtin_prolog_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_call_builtin_prolog_α
n119_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_call_builtin_prolog_α
n120_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_call_builtin_prolog_α
n121_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_call_builtin_prolog_α
n122_call_builtin_prolog_β:
                                                                              jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lx249_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx249_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx249_41
                        cmp              esi, 1;                              jne   .Lx249_55
                        mov              r8, rax;                             jmp   .Lx249_40
.Lx249_55:              cmp              esi, 2;                              jne   .Lx249_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx249_41
                        mov              r8, rax;                             jmp   .Lx249_40
.Lx249_56:              cmp              al, 72;                              jne   .Lx249_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx249_41
                        cmp              rax, r8;                             je    .Lx249_41
                        mov              r8, rax;                             jmp   .Lx249_40
.Lx249_41:              lea              r9, [rsp + 672]
.Lx249_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx249_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx249_43
                        cmp              esi, 1;                              jne   .Lx249_57
                        mov              r9, rax;                             jmp   .Lx249_42
.Lx249_57:              cmp              esi, 2;                              jne   .Lx249_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx249_43
                        mov              r9, rax;                             jmp   .Lx249_42
.Lx249_58:              cmp              al, 72;                              jne   .Lx249_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx249_43
                        cmp              rax, r9;                             je    .Lx249_43
                        mov              r9, rax;                             jmp   .Lx249_42
.Lx249_43:              cmp              r8, r9;                              je    .Lx249_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx249_44
                        cmp              al, 104;                             je    .Lx249_44
                        cmp              al, 72;                              jne   .Lx249_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx249_44
                                                                              jmp   .Lx249_45
.Lx249_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx249_53
                        cmp              al, 104;                             je    .Lx249_53
                        cmp              al, 72;                              jne   .Lx249_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx249_53
                                                                              jmp   .Lx249_46
.Lx249_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx249_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx249_51
.Lx249_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx249_47
                        cmp              al, 104;                             je    .Lx249_47
                        cmp              al, 72;                              jne   .Lx249_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx249_47
                                                                              jmp   .Lx249_48
.Lx249_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx249_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx249_51
.Lx249_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx249_49
                        cmp              dl, 80;                              je    .Lx249_53
                                                                              jmp   .Lx249_52
.Lx249_49:              cmp              dl, 80;                              je    .Lx249_52
                        cmp              cl, 5;                               je    .Lx249_53
                        cmp              dl, 5;                               je    .Lx249_53
                        cmp              cl, 3;                               jne   .Lx249_50
                        cmp              dl, 3;                               jne   .Lx249_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx249_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx249_51
                                                                              jmp   .Lx249_52
.Lx249_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx249_53
.Lx249_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx249_54
.Lx249_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx249_54
.Lx249_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx249_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                              jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              qword ptr [rsp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx253_20
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx253_21
.Lx253_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx253_21:              lea              rax, [rip + .Lx253_7]
                        push             rax
                        mov              edi, 19
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx253_1
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4];               jmp   rax
.Lx253_3:               mov              qword ptr [rsp + 600], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx253_5
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx253_2
.Lx253_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx253_2
.Lx253_4:               mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx253_6
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx253_2
.Lx253_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx253_2
.Lx253_1:               call             rt_faildescr@PLT
.Lx253_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx253_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
.Lx253_29:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                                                                              jmp   n126_suspend_α
n125_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 592], 0
                        lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n127_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              ecx, 32
                        mov              r8d, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 19
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n127_call_builtin_prolog_α
                        lea              r11, [rip + .Lx253_7]
                        push             r11
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4];               jmp   rax
.Lx253_7:               add              rsp, 8
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                                                                              jmp   n126_suspend_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "one/1"
#-----------------------------------------------------------------------------------------------------------------------
n126_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx255_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx255_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n126_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n126_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n126_suspend_β:                                                               jmp   n125_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 8
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n130_call_builtin_prolog_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              rsi, qword ptr [rip + .Lx260_2];     jmp   .Lx260_3
.Lx260_2:               .quad            .Lx260_2_s
.Lx260_2_s:             .string          "ssu_body"
.Lx260_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n136_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                                                                              jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 4
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n133_call_builtin_prolog_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              rsi, qword ptr [rip + .Lx264_2];     jmp   .Lx264_3
.Lx264_2:               .quad            .Lx264_2_s
.Lx264_2_s:             .string          "true"
.Lx264_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n136_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_call_proc_staged_α
n133_call_builtin_prolog_β:
                                                                              jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        call             ssu_body$2F0_dcα;                    jmp   .Lx266_2
.Lx266_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx266_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx266_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n136_call_builtin_prolog_α
                                                                              jmp   n135_suspend_α
n134_call_proc_staged_β:
                                                                              jmp   n136_call_builtin_prolog_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "ssu_body/0"
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx268_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx268_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n135_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n135_suspend_β:                                                               jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 9
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n139_call_builtin_prolog_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              rsi, qword ptr [rip + .Lx273_2];     jmp   .Lx273_3
.Lx273_2:               .quad            .Lx273_2_s
.Lx273_2_s:             .string          "ssu_guard"
.Lx273_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n145_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                              jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n142_call_builtin_prolog_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx277_2];     jmp   .Lx277_3
.Lx277_2:               .quad            .Lx277_2_s
.Lx277_2_s:             .string          "true"
.Lx277_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n145_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_call_proc_staged_α
n142_call_builtin_prolog_β:
                                                                              jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx279_1
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx279_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx279_3]
                        push             rcx
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4];               jmp   rax
.Lx279_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx279_2
.Lx279_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx279_2
.Lx279_1:               call             rt_faildescr@PLT
.Lx279_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx279_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx279_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n145_call_builtin_prolog_α
                                                                              jmp   n144_suspend_α
n143_call_proc_staged_β:
                                                                              jmp   n145_call_builtin_prolog_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "ssu_guard/0"
#-----------------------------------------------------------------------------------------------------------------------
n144_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx281_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx281_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n144_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n144_suspend_β]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n144_suspend_β:                                                               jmp   n143_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test$2F2_ω
n145_call_builtin_prolog_β:
                                                                              jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n59_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx282_50
                        mov              qword ptr [rsp + 3024], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3024];         jmp   rax
.Lx282_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3112]
                        add              rsp, 3136;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 3120]
                        add              rsp, 3136;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$call$2F1:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$call$2F1_α_body:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n284_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], 0
.Lx288_60:              .section         .rodata
.Lbynamegenfn119:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn119]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $call$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_suspend_α
n284_call_builtin_gen_β:
                                                                              jmp   .Lx288_60
#-----------------------------------------------------------------------------------------------------------------------
n285_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx290_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx290_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n285_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $call$2F1_γ
n285_suspend_β:                                                               jmp   n284_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_β:
                                                                              jmp   n284_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx290_50
                        mov              qword ptr [rsp + 96], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx290_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__run$2F1:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 304
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
run$2F1_α_body:
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx299_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx299_101
.Lx299_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx299_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx299_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx299_101
.Lx299_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx299_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    run$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                                                                              jmp   run$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n294_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx304_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx304_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx304_41
                        cmp              esi, 1;                              jne   .Lx304_55
                        mov              r8, rax;                             jmp   .Lx304_40
.Lx304_55:              cmp              esi, 2;                              jne   .Lx304_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx304_41
                        mov              r8, rax;                             jmp   .Lx304_40
.Lx304_56:              cmp              al, 72;                              jne   .Lx304_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx304_41
                        cmp              rax, r8;                             je    .Lx304_41
                        mov              r8, rax;                             jmp   .Lx304_40
.Lx304_41:              lea              r9, [rsp + 208]
.Lx304_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx304_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx304_43
                        cmp              esi, 1;                              jne   .Lx304_57
                        mov              r9, rax;                             jmp   .Lx304_42
.Lx304_57:              cmp              esi, 2;                              jne   .Lx304_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx304_43
                        mov              r9, rax;                             jmp   .Lx304_42
.Lx304_58:              cmp              al, 72;                              jne   .Lx304_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx304_43
                        cmp              rax, r9;                             je    .Lx304_43
                        mov              r9, rax;                             jmp   .Lx304_42
.Lx304_43:              cmp              r8, r9;                              je    .Lx304_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx304_44
                        cmp              al, 104;                             je    .Lx304_44
                        cmp              al, 72;                              jne   .Lx304_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx304_44
                                                                              jmp   .Lx304_45
.Lx304_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx304_53
                        cmp              al, 104;                             je    .Lx304_53
                        cmp              al, 72;                              jne   .Lx304_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx304_53
                                                                              jmp   .Lx304_46
.Lx304_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx304_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx304_51
.Lx304_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx304_47
                        cmp              al, 104;                             je    .Lx304_47
                        cmp              al, 72;                              jne   .Lx304_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx304_47
                                                                              jmp   .Lx304_48
.Lx304_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx304_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx304_51
.Lx304_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx304_49
                        cmp              dl, 80;                              je    .Lx304_53
                                                                              jmp   .Lx304_52
.Lx304_49:              cmp              dl, 80;                              je    .Lx304_52
                        cmp              cl, 5;                               je    .Lx304_53
                        cmp              dl, 5;                               je    .Lx304_53
                        cmp              cl, 3;                               jne   .Lx304_50
                        cmp              dl, 3;                               jne   .Lx304_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx304_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx304_51
                                                                              jmp   .Lx304_52
.Lx304_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx304_53
.Lx304_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx304_54
.Lx304_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx304_54
.Lx304_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx304_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n298_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n295_var_ref_α
n294_call_builtin_prolog_β:
                                                                              jmp   n298_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 272]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n296_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_proc_staged_α:
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx308_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx308_21
.Lx308_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx308_21:              lea              rax, [rip + .Lx308_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx308_1
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4];               jmp   rax
.Lx308_3:               mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx308_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx308_2
.Lx308_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx308_2
.Lx308_4:               mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx308_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx308_2
.Lx308_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx308_2
.Lx308_1:               call             rt_faildescr@PLT
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx308_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n298_call_builtin_prolog_α
                                                                              jmp   n297_suspend_α
n296_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n298_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n298_call_builtin_prolog_α
                        lea              r11, [rip + .Lx308_7]
                        push             r11
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4];               jmp   rax
.Lx308_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n298_call_builtin_prolog_α
                                                                              jmp   n297_suspend_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n297_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx310_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx310_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n297_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   run$2F1_γ
n297_suspend_β:                                                               jmp   n296_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    run$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   run$2F1_ω
n298_call_builtin_prolog_β:
                                                                              jmp   run$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
run$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
run$2F1_β:
                                                                              jmp   n297_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
run$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx311_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx311_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
run$2F1_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__e_not$2F0:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 160
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
e_not$2F0_α_body:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx316_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx316_101
.Lx316_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx316_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx316_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx316_101
.Lx316_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx316_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    e_not$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n313_call_proc_staged_α
n312_call_builtin_prolog_β:
                                                                              jmp   e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        call             g_b$2F0_dcα;                         jmp   .Lx318_2
.Lx318_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx318_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx318_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n314_suspend_α
                                                                              jmp   n315_call_builtin_prolog_α
n313_call_proc_staged_β:
                                                                              jmp   n314_suspend_α
.Lx318_0:               .quad            .Lx318_0_s
.Lx318_0_s:             .string          "g_b/0"
#-----------------------------------------------------------------------------------------------------------------------
n314_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx320_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx320_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n314_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   e_not$2F0_γ
n314_suspend_β:                                                               jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    e_not$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   e_not$2F0_ω
n315_call_builtin_prolog_β:
                                                                              jmp   e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
e_not$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
e_not$2F0_β:
                                                                              jmp   n314_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
e_not$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx321_50
                        mov              qword ptr [rsp + 128], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx321_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
e_not$2F0_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_expand$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test_expand$2F0_α_body:
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx330_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx330_101
.Lx330_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx330_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx330_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx330_101
.Lx330_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx330_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_expand$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n323_lit_string_α
n322_call_builtin_prolog_β:
                                                                              jmp   test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n324_lit_string_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n325_lit_string_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n326_call_builtin_prolog_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_call_proc_staged_α
n326_call_builtin_prolog_β:
                                                                              jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx336_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx336_21
.Lx336_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx336_21:              mov              rdi, qword ptr [rip + .Lx336_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx336_1
                        mov              rdi, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx336_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx336_3]
                        push             rcx
                        lea              rcx, [rip + .Lx336_3]
                        lea              rdx, [rip + .Lx336_4];               jmp   rax
.Lx336_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx336_2
.Lx336_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx336_2
.Lx336_1:               call             rt_faildescr@PLT
.Lx336_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx336_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx336_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n329_call_builtin_prolog_α
                                                                              jmp   n328_suspend_α
n327_call_proc_staged_β:
                                                                              jmp   n329_call_builtin_prolog_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n328_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx338_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx338_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n328_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_expand$2F0_γ
n328_suspend_β:                                                               jmp   n327_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_expand$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_expand$2F0_ω
n329_call_builtin_prolog_β:
                                                                              jmp   test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_expand$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_expand$2F0_β:
                                                                              jmp   n328_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_expand$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx339_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx339_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_expand$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__goal_expansion$2F2:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rsp
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1056
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
goal_expansion$2F2_α_body:
                        lea              rax, [rip + n347_suspend_β]
                        mov              qword ptr [rsp + 1008], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx374_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx374_101
.Lx374_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx374_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx374_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx374_101
.Lx374_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx374_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    goal_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n341_var_ref_α
n340_call_builtin_prolog_β:
                                                                              jmp   goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 3
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n343_call_builtin_prolog_α
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              rsi, qword ptr [rip + .Lx378_2];     jmp   .Lx378_3
.Lx378_2:               .quad            .Lx378_2_s
.Lx378_2_s:             .string          "g_b"
.Lx378_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n348_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                                                                              jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 3
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n346_call_builtin_prolog_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "g_c"
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              rsi, qword ptr [rip + .Lx382_2];     jmp   .Lx382_3
.Lx382_2:               .quad            .Lx382_2_s
.Lx382_2_s:             .string          "g_c"
.Lx382_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n348_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n347_suspend_α
n346_call_builtin_prolog_β:
                                                                              jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx384_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1008];         jmp   rax
.Lx384_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n347_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n347_suspend_β]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   goal_expansion$2F2_γ
n347_suspend_β:                                                               jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    goal_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n349_var_ref_α
n348_call_builtin_prolog_β:
                                                                              jmp   goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 3
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n351_call_builtin_prolog_α
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              rsi, qword ptr [rip + .Lx389_2];     jmp   .Lx389_3
.Lx389_2:               .quad            .Lx389_2_s
.Lx389_2_s:             .string          "foo"
.Lx389_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n356_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n352_var_ref_α
n351_call_builtin_prolog_β:
                                                                              jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 3
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n354_call_builtin_prolog_α
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              rsi, qword ptr [rip + .Lx393_2];     jmp   .Lx393_3
.Lx393_2:               .quad            .Lx393_2_s
.Lx393_2_s:             .string          "bar"
.Lx393_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n356_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_suspend_α
n354_call_builtin_prolog_β:
                                                                              jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx395_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1008];         jmp   rax
.Lx395_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n355_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n355_suspend_β]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   goal_expansion$2F2_γ
n355_suspend_β:                                                               jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    goal_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n357_var_ref_α
n356_call_builtin_prolog_β:
                                                                              jmp   goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n359_lit_string_α
.Lx399_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 7
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n360_call_builtin_prolog_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n373_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n361_var_ref_α
n360_call_builtin_prolog_β:
                                                                              jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n363_var_ref_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n364_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n373_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n365_call_builtin_prolog_α
n364_call_builtin_prolog_β:
                                                                              jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx408_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx408_41
                        cmp              esi, 1;                              jne   .Lx408_55
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_55:              cmp              esi, 2;                              jne   .Lx408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx408_41
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_56:              cmp              al, 72;                              jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx408_41
                        cmp              rax, r8;                             je    .Lx408_41
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_41:              lea              r9, [rsp + 352]
.Lx408_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx408_43
                        cmp              esi, 1;                              jne   .Lx408_57
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_57:              cmp              esi, 2;                              jne   .Lx408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx408_43
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_58:              cmp              al, 72;                              jne   .Lx408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx408_43
                        cmp              rax, r9;                             je    .Lx408_43
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_43:              cmp              r8, r9;                              je    .Lx408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx408_44
                        cmp              al, 104;                             je    .Lx408_44
                        cmp              al, 72;                              jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx408_44
                                                                              jmp   .Lx408_45
.Lx408_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx408_53
                        cmp              al, 104;                             je    .Lx408_53
                        cmp              al, 72;                              jne   .Lx408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx408_53
                                                                              jmp   .Lx408_46
.Lx408_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx408_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx408_51
.Lx408_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx408_47
                        cmp              al, 104;                             je    .Lx408_47
                        cmp              al, 72;                              jne   .Lx408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx408_47
                                                                              jmp   .Lx408_48
.Lx408_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx408_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx408_51
.Lx408_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx408_49
                        cmp              dl, 80;                              je    .Lx408_53
                                                                              jmp   .Lx408_52
.Lx408_49:              cmp              dl, 80;                              je    .Lx408_52
                        cmp              cl, 5;                               je    .Lx408_53
                        cmp              dl, 5;                               je    .Lx408_53
                        cmp              cl, 3;                               jne   .Lx408_50
                        cmp              dl, 3;                               jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx408_51
                                                                              jmp   .Lx408_52
.Lx408_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx408_53
.Lx408_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx408_54
.Lx408_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx408_54
.Lx408_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx408_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n373_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                              jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n368_var_ref_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n370_call_builtin_prolog_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n373_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n371_call_builtin_prolog_α
n370_call_builtin_prolog_β:
                                                                              jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx416_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx416_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx416_41
                        cmp              esi, 1;                              jne   .Lx416_55
                        mov              r8, rax;                             jmp   .Lx416_40
.Lx416_55:              cmp              esi, 2;                              jne   .Lx416_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx416_41
                        mov              r8, rax;                             jmp   .Lx416_40
.Lx416_56:              cmp              al, 72;                              jne   .Lx416_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx416_41
                        cmp              rax, r8;                             je    .Lx416_41
                        mov              r8, rax;                             jmp   .Lx416_40
.Lx416_41:              lea              r9, [rsp + 160]
.Lx416_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx416_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx416_43
                        cmp              esi, 1;                              jne   .Lx416_57
                        mov              r9, rax;                             jmp   .Lx416_42
.Lx416_57:              cmp              esi, 2;                              jne   .Lx416_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx416_43
                        mov              r9, rax;                             jmp   .Lx416_42
.Lx416_58:              cmp              al, 72;                              jne   .Lx416_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx416_43
                        cmp              rax, r9;                             je    .Lx416_43
                        mov              r9, rax;                             jmp   .Lx416_42
.Lx416_43:              cmp              r8, r9;                              je    .Lx416_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx416_44
                        cmp              al, 104;                             je    .Lx416_44
                        cmp              al, 72;                              jne   .Lx416_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx416_44
                                                                              jmp   .Lx416_45
.Lx416_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx416_53
                        cmp              al, 104;                             je    .Lx416_53
                        cmp              al, 72;                              jne   .Lx416_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx416_53
                                                                              jmp   .Lx416_46
.Lx416_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx416_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx416_51
.Lx416_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx416_47
                        cmp              al, 104;                             je    .Lx416_47
                        cmp              al, 72;                              jne   .Lx416_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx416_47
                                                                              jmp   .Lx416_48
.Lx416_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx416_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx416_51
.Lx416_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx416_49
                        cmp              dl, 80;                              je    .Lx416_53
                                                                              jmp   .Lx416_52
.Lx416_49:              cmp              dl, 80;                              je    .Lx416_52
                        cmp              cl, 5;                               je    .Lx416_53
                        cmp              dl, 5;                               je    .Lx416_53
                        cmp              cl, 3;                               jne   .Lx416_50
                        cmp              dl, 3;                               jne   .Lx416_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx416_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx416_51
                                                                              jmp   .Lx416_52
.Lx416_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx416_53
.Lx416_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx416_54
.Lx416_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx416_54
.Lx416_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx416_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n373_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n372_suspend_α
n371_call_builtin_prolog_β:
                                                                              jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n372_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx418_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1008];         jmp   rax
.Lx418_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n372_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n372_suspend_β]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   goal_expansion$2F2_γ
n372_suspend_β:                                                               jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    goal_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   goal_expansion$2F2_ω
n373_call_builtin_prolog_β:
                                                                              jmp   goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
goal_expansion$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
goal_expansion$2F2_β:
                                                                              jmp   n347_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
goal_expansion$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx419_50
                        mov              qword ptr [rsp + 1008], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1008];         jmp   rax
.Lx419_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
goal_expansion$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 4720
                        mov              qword ptr [rsp + 4696], rcx
                        mov              qword ptr [rsp + 4704], rdx
                        mov              qword ptr [rsp + 4712], rsp
                        mov              rdi, rsp
                        mov              esi, 4608
                        mov              edx, 4688
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_test$2F4_α_body:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx574_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx574_101
.Lx574_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx574_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx574_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx574_101
.Lx574_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx574_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n421_var_ref_α
n420_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n423_call_builtin_prolog_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4552], rax
                        lea              rdi, [rsp + 4544]
                        mov              rsi, qword ptr [rip + .Lx578_2];     jmp   .Lx578_3
.Lx578_2:               .quad            .Lx578_2_s
.Lx578_2_s:             .string          "expand"
.Lx578_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              al, 104;                             je    n441_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n424_var_ref_α
n423_call_builtin_prolog_β:
                                                                              jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 8
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n426_call_builtin_prolog_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4472], rax
                        lea              rdi, [rsp + 4464]
                        mov              rsi, qword ptr [rip + .Lx582_2];     jmp   .Lx582_3
.Lx582_2:               .quad            .Lx582_2_s
.Lx582_2_s:             .string          "cond_dcg"
.Lx582_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx
                        cmp              al, 104;                             je    n441_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n427_var_ref_α
n426_call_builtin_prolog_β:
                                                                              jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx;         jmp   n428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 4
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n429_call_builtin_prolog_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4392], rax
                        lea              rdi, [rsp + 4384]
                        mov              rsi, qword ptr [rip + .Lx586_2];     jmp   .Lx586_3
.Lx586_2:               .quad            .Lx586_2_s
.Lx586_2_s:             .string          "true"
.Lx586_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx
                        cmp              al, 104;                             je    n441_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n430_var_ref_α
n429_call_builtin_prolog_β:
                                                                              jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              qword ptr [rsp + 4352], 2            # result
                        mov              dword ptr [rsp + 4356], 2
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n432_lit_string_α
.Lx589_0:               .quad            .Lx589_0_s
.Lx589_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 17
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n433_lit_string_α
.Lx590_0:               .quad            .Lx590_0_s
.Lx590_0_s:             .string          "current_predicate"
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              qword ptr [rsp + 4192], 2            # result
                        mov              dword ptr [rsp + 4196], 2
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n434_lit_string_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:      mov              qword ptr [rsp + 4080], 2            # result
                        mov              dword ptr [rsp + 4084], 4
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n435_lit_integer_α
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              qword ptr [rsp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n436_call_builtin_prolog_α
.Lx593_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 4152], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4136], rax
                        lea              rdi, [rsp + 4128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4248], rax
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4232], rax
                        lea              rdi, [rsp + 4224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n441_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                                                                              jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4040], rax
                        lea              rdi, [rsp + 4032]
                        lea              r8, [rsp + 4032]
.Lx597_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx597_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx597_41
                        cmp              esi, 1;                              jne   .Lx597_55
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_55:              cmp              esi, 2;                              jne   .Lx597_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx597_41
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_56:              cmp              al, 72;                              jne   .Lx597_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx597_41
                        cmp              rax, r8;                             je    .Lx597_41
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_41:              lea              r9, [rsp + 4048]
.Lx597_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx597_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx597_43
                        cmp              esi, 1;                              jne   .Lx597_57
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_57:              cmp              esi, 2;                              jne   .Lx597_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx597_43
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_58:              cmp              al, 72;                              jne   .Lx597_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx597_43
                        cmp              rax, r9;                             je    .Lx597_43
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_43:              cmp              r8, r9;                              je    .Lx597_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx597_44
                        cmp              al, 104;                             je    .Lx597_44
                        cmp              al, 72;                              jne   .Lx597_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx597_44
                                                                              jmp   .Lx597_45
.Lx597_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx597_53
                        cmp              al, 104;                             je    .Lx597_53
                        cmp              al, 72;                              jne   .Lx597_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx597_53
                                                                              jmp   .Lx597_46
.Lx597_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx597_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx597_51
.Lx597_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx597_47
                        cmp              al, 104;                             je    .Lx597_47
                        cmp              al, 72;                              jne   .Lx597_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx597_47
                                                                              jmp   .Lx597_48
.Lx597_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx597_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx597_51
.Lx597_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx597_49
                        cmp              dl, 80;                              je    .Lx597_53
                                                                              jmp   .Lx597_52
.Lx597_49:              cmp              dl, 80;                              je    .Lx597_52
                        cmp              cl, 5;                               je    .Lx597_53
                        cmp              dl, 5;                               je    .Lx597_53
                        cmp              cl, 3;                               jne   .Lx597_50
                        cmp              dl, 3;                               jne   .Lx597_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx597_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx597_51
                                                                              jmp   .Lx597_52
.Lx597_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx597_53
.Lx597_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx597_54
.Lx597_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx597_54
.Lx597_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx597_54:              mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              al, 104;                             je    n441_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n440_suspend_α
n439_call_builtin_prolog_β:
                                                                              jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx599_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx599_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n440_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n440_suspend_β:                                                               jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3992], rax
                        lea              rdi, [rsp + 3984]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 6
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n444_call_builtin_prolog_α
.Lx603_0:               .quad            .Lx603_0_s
.Lx603_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              rsi, qword ptr [rip + .Lx604_2];     jmp   .Lx604_3
.Lx604_2:               .quad            .Lx604_2_s
.Lx604_2_s:             .string          "expand"
.Lx604_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n445_var_ref_α
n444_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 8
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n447_call_builtin_prolog_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3832], rax
                        lea              rdi, [rsp + 3824]
                        mov              rsi, qword ptr [rip + .Lx608_2];     jmp   .Lx608_3
.Lx608_2:               .quad            .Lx608_2_s
.Lx608_2_s:             .string          "make_dcg"
.Lx608_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n448_var_ref_α
n447_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx;         jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      mov              qword ptr [rsp + 3792], 2            # result
                        mov              dword ptr [rsp + 3796], 2
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 3800], rax;         jmp   n450_var_ref_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n451_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      mov              qword ptr [rsp + 3696], 2            # result
                        mov              dword ptr [rsp + 3700], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n452_var_ref_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4640]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4656]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3672], rax
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n455_call_builtin_prolog_α
n454_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3736], rax
                        lea              rdi, [rsp + 3728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n456_call_builtin_prolog_α
n455_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3528], rax
                        lea              rdi, [rsp + 3520]
                        lea              r8, [rsp + 3520]
.Lx621_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx621_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx621_41
                        cmp              esi, 1;                              jne   .Lx621_55
                        mov              r8, rax;                             jmp   .Lx621_40
.Lx621_55:              cmp              esi, 2;                              jne   .Lx621_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx621_41
                        mov              r8, rax;                             jmp   .Lx621_40
.Lx621_56:              cmp              al, 72;                              jne   .Lx621_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx621_41
                        cmp              rax, r8;                             je    .Lx621_41
                        mov              r8, rax;                             jmp   .Lx621_40
.Lx621_41:              lea              r9, [rsp + 3536]
.Lx621_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx621_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx621_43
                        cmp              esi, 1;                              jne   .Lx621_57
                        mov              r9, rax;                             jmp   .Lx621_42
.Lx621_57:              cmp              esi, 2;                              jne   .Lx621_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx621_43
                        mov              r9, rax;                             jmp   .Lx621_42
.Lx621_58:              cmp              al, 72;                              jne   .Lx621_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx621_43
                        cmp              rax, r9;                             je    .Lx621_43
                        mov              r9, rax;                             jmp   .Lx621_42
.Lx621_43:              cmp              r8, r9;                              je    .Lx621_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx621_44
                        cmp              al, 104;                             je    .Lx621_44
                        cmp              al, 72;                              jne   .Lx621_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx621_44
                                                                              jmp   .Lx621_45
.Lx621_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx621_53
                        cmp              al, 104;                             je    .Lx621_53
                        cmp              al, 72;                              jne   .Lx621_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx621_53
                                                                              jmp   .Lx621_46
.Lx621_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx621_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx621_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx621_51
.Lx621_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx621_47
                        cmp              al, 104;                             je    .Lx621_47
                        cmp              al, 72;                              jne   .Lx621_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx621_47
                                                                              jmp   .Lx621_48
.Lx621_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx621_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx621_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx621_51
.Lx621_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx621_49
                        cmp              dl, 80;                              je    .Lx621_53
                                                                              jmp   .Lx621_52
.Lx621_49:              cmp              dl, 80;                              je    .Lx621_52
                        cmp              cl, 5;                               je    .Lx621_53
                        cmp              dl, 5;                               je    .Lx621_53
                        cmp              cl, 3;                               jne   .Lx621_50
                        cmp              dl, 3;                               jne   .Lx621_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx621_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx621_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx621_51
                                                                              jmp   .Lx621_52
.Lx621_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx621_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx621_53
.Lx621_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx621_54
.Lx621_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx621_54
.Lx621_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx621_54:              mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n459_lit_string_α
.Lx624_0:               .quad            .Lx624_0_s
.Lx624_0_s:             .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n460_var_ref_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4640]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n461_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4656]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n462_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3320], rax
                        lea              rdi, [rsp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n463_var_ref_α
n462_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3448], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3432], rax
                        lea              rdi, [rsp + 3424]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n465_call_builtin_prolog_α
n464_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        lea              r8, [rsp + 3216]
.Lx634_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx634_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx634_41
                        cmp              esi, 1;                              jne   .Lx634_55
                        mov              r8, rax;                             jmp   .Lx634_40
.Lx634_55:              cmp              esi, 2;                              jne   .Lx634_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx634_41
                        mov              r8, rax;                             jmp   .Lx634_40
.Lx634_56:              cmp              al, 72;                              jne   .Lx634_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx634_41
                        cmp              rax, r8;                             je    .Lx634_41
                        mov              r8, rax;                             jmp   .Lx634_40
.Lx634_41:              lea              r9, [rsp + 3232]
.Lx634_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx634_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx634_43
                        cmp              esi, 1;                              jne   .Lx634_57
                        mov              r9, rax;                             jmp   .Lx634_42
.Lx634_57:              cmp              esi, 2;                              jne   .Lx634_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx634_43
                        mov              r9, rax;                             jmp   .Lx634_42
.Lx634_58:              cmp              al, 72;                              jne   .Lx634_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx634_43
                        cmp              rax, r9;                             je    .Lx634_43
                        mov              r9, rax;                             jmp   .Lx634_42
.Lx634_43:              cmp              r8, r9;                              je    .Lx634_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx634_44
                        cmp              al, 104;                             je    .Lx634_44
                        cmp              al, 72;                              jne   .Lx634_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx634_44
                                                                              jmp   .Lx634_45
.Lx634_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx634_53
                        cmp              al, 104;                             je    .Lx634_53
                        cmp              al, 72;                              jne   .Lx634_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx634_53
                                                                              jmp   .Lx634_46
.Lx634_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx634_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx634_51
.Lx634_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx634_47
                        cmp              al, 104;                             je    .Lx634_47
                        cmp              al, 72;                              jne   .Lx634_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx634_47
                                                                              jmp   .Lx634_48
.Lx634_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx634_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx634_51
.Lx634_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx634_49
                        cmp              dl, 80;                              je    .Lx634_53
                                                                              jmp   .Lx634_52
.Lx634_49:              cmp              dl, 80;                              je    .Lx634_52
                        cmp              cl, 5;                               je    .Lx634_53
                        cmp              dl, 5;                               je    .Lx634_53
                        cmp              cl, 3;                               jne   .Lx634_50
                        cmp              dl, 3;                               jne   .Lx634_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx634_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx634_51
                                                                              jmp   .Lx634_52
.Lx634_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx634_53
.Lx634_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx634_54
.Lx634_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx634_54
.Lx634_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx634_54:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n467_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n466_suspend_α
n465_call_builtin_prolog_β:
                                                                              jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx636_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx636_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n466_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n466_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n466_suspend_β:                                                               jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3176], rax
                        lea              rdi, [rsp + 3168]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n468_var_ref_α
n467_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              qword ptr [rsp + 3136], 2            # result
                        mov              dword ptr [rsp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n470_call_builtin_prolog_α
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        lea              rdi, [rsp + 3088]
                        mov              rsi, qword ptr [rip + .Lx641_2];     jmp   .Lx641_3
.Lx641_2:               .quad            .Lx641_2_s
.Lx641_2_s:             .string          "expand"
.Lx641_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_var_ref_α
n470_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 22
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n473_call_builtin_prolog_α
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              rsi, qword ptr [rip + .Lx645_2];     jmp   .Lx645_3
.Lx645_2:               .quad            .Lx645_2_s
.Lx645_2_s:             .string          "chained_term_expansion"
.Lx645_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n474_var_ref_α
n473_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n475_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 2
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n476_var_ref_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 4
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n478_call_builtin_prolog_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2920], rax
                        lea              rdi, [rsp + 2912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n479_call_builtin_prolog_α
n478_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        lea              rdi, [rsp + 2816]
                        lea              r8, [rsp + 2816]
.Lx653_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx653_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              esi, 1;                              jne   .Lx653_55
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_55:              cmp              esi, 2;                              jne   .Lx653_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_56:              cmp              al, 72;                              jne   .Lx653_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              rax, r8;                             je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_41:              lea              r9, [rsp + 2832]
.Lx653_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx653_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              esi, 1;                              jne   .Lx653_57
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_57:              cmp              esi, 2;                              jne   .Lx653_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_58:              cmp              al, 72;                              jne   .Lx653_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              rax, r9;                             je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_43:              cmp              r8, r9;                              je    .Lx653_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx653_44
                        cmp              al, 104;                             je    .Lx653_44
                        cmp              al, 72;                              jne   .Lx653_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx653_44
                                                                              jmp   .Lx653_45
.Lx653_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_53
                        cmp              al, 104;                             je    .Lx653_53
                        cmp              al, 72;                              jne   .Lx653_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_53
                                                                              jmp   .Lx653_46
.Lx653_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx653_51
.Lx653_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_47
                        cmp              al, 104;                             je    .Lx653_47
                        cmp              al, 72;                              jne   .Lx653_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_47
                                                                              jmp   .Lx653_48
.Lx653_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx653_51
.Lx653_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx653_49
                        cmp              dl, 80;                              je    .Lx653_53
                                                                              jmp   .Lx653_52
.Lx653_49:              cmp              dl, 80;                              je    .Lx653_52
                        cmp              cl, 5;                               je    .Lx653_53
                        cmp              dl, 5;                               je    .Lx653_53
                        cmp              cl, 3;                               jne   .Lx653_50
                        cmp              dl, 3;                               jne   .Lx653_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx653_51
                                                                              jmp   .Lx653_52
.Lx653_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx653_53
.Lx653_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx653_54
.Lx653_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx653_54
.Lx653_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx653_54:              mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n480_var_ref_α
n479_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 6
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n482_lit_string_α
.Lx656_0:               .quad            .Lx656_0_s
.Lx656_0_s:             .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 7
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n483_var_ref_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n484_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n485_call_builtin_prolog_α
n484_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        lea              rdi, [rsp + 2624]
                        lea              r8, [rsp + 2624]
.Lx661_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              esi, 1;                              jne   .Lx661_55
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_55:              cmp              esi, 2;                              jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_56:              cmp              al, 72;                              jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              rax, r8;                             je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_41:              lea              r9, [rsp + 2640]
.Lx661_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              esi, 1;                              jne   .Lx661_57
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_57:              cmp              esi, 2;                              jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_58:              cmp              al, 72;                              jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              rax, r9;                             je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_43:              cmp              r8, r9;                              je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx661_44
                        cmp              al, 104;                             je    .Lx661_44
                        cmp              al, 72;                              jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx661_44
                                                                              jmp   .Lx661_45
.Lx661_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx661_53
                        cmp              al, 104;                             je    .Lx661_53
                        cmp              al, 72;                              jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_53
                                                                              jmp   .Lx661_46
.Lx661_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx661_51
.Lx661_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx661_47
                        cmp              al, 104;                             je    .Lx661_47
                        cmp              al, 72;                              jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_47
                                                                              jmp   .Lx661_48
.Lx661_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx661_51
.Lx661_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx661_49
                        cmp              dl, 80;                              je    .Lx661_53
                                                                              jmp   .Lx661_52
.Lx661_49:              cmp              dl, 80;                              je    .Lx661_52
                        cmp              cl, 5;                               je    .Lx661_53
                        cmp              dl, 5;                               je    .Lx661_53
                        cmp              cl, 3;                               jne   .Lx661_50
                        cmp              dl, 3;                               jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx661_51
                                                                              jmp   .Lx661_52
.Lx661_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx661_53
.Lx661_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx661_54
.Lx661_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx661_54
.Lx661_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx661_54:              mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n487_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n486_suspend_α
n485_call_builtin_prolog_β:
                                                                              jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n486_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx663_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx663_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n486_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n486_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n486_suspend_β:                                                               jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n488_var_ref_α
n487_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n490_call_builtin_prolog_α
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        mov              rsi, qword ptr [rip + .Lx668_2];     jmp   .Lx668_3
.Lx668_2:               .quad            .Lx668_2_s
.Lx668_2_s:             .string          "expand"
.Lx668_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n491_var_ref_α
n490_call_builtin_prolog_β:
                                                                              jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 8
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n493_call_builtin_prolog_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        lea              rdi, [rsp + 2416]
                        mov              rsi, qword ptr [rip + .Lx672_2];     jmp   .Lx672_3
.Lx672_2:               .quad            .Lx672_2_s
.Lx672_2_s:             .string          "meta_arg"
.Lx672_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n494_var_ref_α
n493_call_builtin_prolog_β:
                                                                              jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n496_lit_string_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:      mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n497_lit_string_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 2
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n498_call_builtin_prolog_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2344], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2328], rax
                        lea              rdi, [rsp + 2320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n499_call_builtin_prolog_α
n498_call_builtin_prolog_β:
                                                                              jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        lea              rdi, [rsp + 2224]
                        lea              r8, [rsp + 2224]
.Lx679_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx679_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx679_41
                        cmp              esi, 1;                              jne   .Lx679_55
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_55:              cmp              esi, 2;                              jne   .Lx679_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx679_41
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_56:              cmp              al, 72;                              jne   .Lx679_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx679_41
                        cmp              rax, r8;                             je    .Lx679_41
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_41:              lea              r9, [rsp + 2240]
.Lx679_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx679_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx679_43
                        cmp              esi, 1;                              jne   .Lx679_57
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_57:              cmp              esi, 2;                              jne   .Lx679_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx679_43
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_58:              cmp              al, 72;                              jne   .Lx679_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx679_43
                        cmp              rax, r9;                             je    .Lx679_43
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_43:              cmp              r8, r9;                              je    .Lx679_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx679_44
                        cmp              al, 104;                             je    .Lx679_44
                        cmp              al, 72;                              jne   .Lx679_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx679_44
                                                                              jmp   .Lx679_45
.Lx679_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx679_53
                        cmp              al, 104;                             je    .Lx679_53
                        cmp              al, 72;                              jne   .Lx679_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx679_53
                                                                              jmp   .Lx679_46
.Lx679_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx679_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx679_51
.Lx679_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx679_47
                        cmp              al, 104;                             je    .Lx679_47
                        cmp              al, 72;                              jne   .Lx679_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx679_47
                                                                              jmp   .Lx679_48
.Lx679_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx679_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx679_51
.Lx679_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx679_49
                        cmp              dl, 80;                              je    .Lx679_53
                                                                              jmp   .Lx679_52
.Lx679_49:              cmp              dl, 80;                              je    .Lx679_52
                        cmp              cl, 5;                               je    .Lx679_53
                        cmp              dl, 5;                               je    .Lx679_53
                        cmp              cl, 3;                               jne   .Lx679_50
                        cmp              dl, 3;                               jne   .Lx679_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx679_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx679_51
                                                                              jmp   .Lx679_52
.Lx679_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx679_53
.Lx679_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx679_54
.Lx679_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx679_54
.Lx679_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx679_54:              mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n500_var_ref_α
n499_call_builtin_prolog_β:
                                                                              jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 5
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n502_call_builtin_prolog_α
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "e_not"
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2144]
                        mov              rsi, qword ptr [rip + .Lx683_2];     jmp   .Lx683_3
.Lx683_2:               .quad            .Lx683_2_s
.Lx683_2_s:             .string          "e_not"
.Lx683_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n503_suspend_α
n502_call_builtin_prolog_β:
                                                                              jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx685_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx685_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n503_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n503_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n503_suspend_β:                                                               jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n505_var_ref_α
n504_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n507_call_builtin_prolog_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        mov              rsi, qword ptr [rip + .Lx690_2];     jmp   .Lx690_3
.Lx690_2:               .quad            .Lx690_2_s
.Lx690_2_s:             .string          "expand"
.Lx690_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n518_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n508_var_ref_α
n507_call_builtin_prolog_β:
                                                                              jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 25
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n510_call_builtin_prolog_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1944], rax
                        lea              rdi, [rsp + 1936]
                        mov              rsi, qword ptr [rip + .Lx694_2];     jmp   .Lx694_3
.Lx694_2:               .quad            .Lx694_2_s
.Lx694_2_s:             .string          "goal_expansion_local_pred"
.Lx694_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n518_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n511_var_ref_α
n510_call_builtin_prolog_β:
                                                                              jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 2
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n513_call_builtin_prolog_α
.Lx697_0:               .quad            .Lx697_0_s
.Lx697_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n513_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        lea              rdi, [rsp + 1856]
                        mov              rsi, qword ptr [rip + .Lx698_2];     jmp   .Lx698_3
.Lx698_2:               .quad            .Lx698_2_s
.Lx698_2_s:             .string          "[]"
.Lx698_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n518_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n514_var_ref_α
n513_call_builtin_prolog_β:
                                                                              jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 12
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n516_call_builtin_prolog_α
.Lx701_0:               .quad            .Lx701_0_s
.Lx701_0_s:             .string          "test_foo_bar"
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              rsi, qword ptr [rip + .Lx702_2];     jmp   .Lx702_3
.Lx702_2:               .quad            .Lx702_2_s
.Lx702_2_s:             .string          "test_foo_bar"
.Lx702_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n518_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n517_suspend_α
n516_call_builtin_prolog_β:
                                                                              jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n517_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx704_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx704_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n517_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n517_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n517_suspend_β:                                                               jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n519_var_ref_α
n518_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n520_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:      mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 6
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n521_call_builtin_prolog_α
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        mov              rsi, qword ptr [rip + .Lx709_2];     jmp   .Lx709_3
.Lx709_2:               .quad            .Lx709_2_s
.Lx709_2_s:             .string          "expand"
.Lx709_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n522_var_ref_α
n521_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:      mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 11
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n524_call_builtin_prolog_α
.Lx712_0:               .quad            .Lx712_0_s
.Lx712_0_s:             .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              rsi, qword ptr [rip + .Lx713_2];     jmp   .Lx713_3
.Lx713_2:               .quad            .Lx713_2_s
.Lx713_2_s:             .string          "expand_once"
.Lx713_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n525_var_ref_α
n524_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n526_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 3
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n527_lit_string_α
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 2
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n528_var_ref_α
.Lx717_0:               .quad            .Lx717_0_s
.Lx717_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n530_lit_integer_α
.Lx720_0:               .quad            .Lx720_0_s
.Lx720_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_integer_α:     mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n531_lit_string_α
.Lx721_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n532_lit_integer_α
.Lx722_0:               .quad            .Lx722_0_s
.Lx722_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:     mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n533_lit_string_α
.Lx723_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 2
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n534_call_builtin_prolog_α
.Lx724_0:               .quad            .Lx724_0_s
.Lx724_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n535_call_builtin_prolog_α
n534_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n536_call_builtin_prolog_α
n535_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n537_call_builtin_prolog_α
n536_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n538_call_builtin_prolog_α
n537_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.Lx729_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              esi, 1;                              jne   .Lx729_55
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_55:              cmp              esi, 2;                              jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_56:              cmp              al, 72;                              jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx729_41
                        cmp              rax, r8;                             je    .Lx729_41
                        mov              r8, rax;                             jmp   .Lx729_40
.Lx729_41:              lea              r9, [rsp + 1088]
.Lx729_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              esi, 1;                              jne   .Lx729_57
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_57:              cmp              esi, 2;                              jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_58:              cmp              al, 72;                              jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx729_43
                        cmp              rax, r9;                             je    .Lx729_43
                        mov              r9, rax;                             jmp   .Lx729_42
.Lx729_43:              cmp              r8, r9;                              je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx729_44
                        cmp              al, 104;                             je    .Lx729_44
                        cmp              al, 72;                              jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx729_44
                                                                              jmp   .Lx729_45
.Lx729_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx729_53
                        cmp              al, 104;                             je    .Lx729_53
                        cmp              al, 72;                              jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_53
                                                                              jmp   .Lx729_46
.Lx729_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx729_51
.Lx729_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx729_47
                        cmp              al, 104;                             je    .Lx729_47
                        cmp              al, 72;                              jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx729_47
                                                                              jmp   .Lx729_48
.Lx729_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx729_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx729_51
.Lx729_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx729_49
                        cmp              dl, 80;                              je    .Lx729_53
                                                                              jmp   .Lx729_52
.Lx729_49:              cmp              dl, 80;                              je    .Lx729_52
                        cmp              cl, 5;                               je    .Lx729_53
                        cmp              dl, 5;                               je    .Lx729_53
                        cmp              cl, 3;                               jne   .Lx729_50
                        cmp              dl, 3;                               jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx729_51
                                                                              jmp   .Lx729_52
.Lx729_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx729_53
.Lx729_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx729_54
.Lx729_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx729_54
.Lx729_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx729_54:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n539_var_ref_α
n538_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 3
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n541_var_ref_α
.Lx732_0:               .quad            .Lx732_0_s
.Lx732_0_s:             .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n542_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n543_call_builtin_prolog_α
n542_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        lea              r8, [rsp + 912]
.Lx736_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx736_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx736_41
                        cmp              esi, 1;                              jne   .Lx736_55
                        mov              r8, rax;                             jmp   .Lx736_40
.Lx736_55:              cmp              esi, 2;                              jne   .Lx736_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx736_41
                        mov              r8, rax;                             jmp   .Lx736_40
.Lx736_56:              cmp              al, 72;                              jne   .Lx736_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx736_41
                        cmp              rax, r8;                             je    .Lx736_41
                        mov              r8, rax;                             jmp   .Lx736_40
.Lx736_41:              lea              r9, [rsp + 928]
.Lx736_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx736_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx736_43
                        cmp              esi, 1;                              jne   .Lx736_57
                        mov              r9, rax;                             jmp   .Lx736_42
.Lx736_57:              cmp              esi, 2;                              jne   .Lx736_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx736_43
                        mov              r9, rax;                             jmp   .Lx736_42
.Lx736_58:              cmp              al, 72;                              jne   .Lx736_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx736_43
                        cmp              rax, r9;                             je    .Lx736_43
                        mov              r9, rax;                             jmp   .Lx736_42
.Lx736_43:              cmp              r8, r9;                              je    .Lx736_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx736_44
                        cmp              al, 104;                             je    .Lx736_44
                        cmp              al, 72;                              jne   .Lx736_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx736_44
                                                                              jmp   .Lx736_45
.Lx736_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx736_53
                        cmp              al, 104;                             je    .Lx736_53
                        cmp              al, 72;                              jne   .Lx736_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx736_53
                                                                              jmp   .Lx736_46
.Lx736_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx736_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx736_51
.Lx736_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx736_47
                        cmp              al, 104;                             je    .Lx736_47
                        cmp              al, 72;                              jne   .Lx736_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx736_47
                                                                              jmp   .Lx736_48
.Lx736_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx736_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx736_51
.Lx736_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx736_49
                        cmp              dl, 80;                              je    .Lx736_53
                                                                              jmp   .Lx736_52
.Lx736_49:              cmp              dl, 80;                              je    .Lx736_52
                        cmp              cl, 5;                               je    .Lx736_53
                        cmp              dl, 5;                               je    .Lx736_53
                        cmp              cl, 3;                               jne   .Lx736_50
                        cmp              dl, 3;                               jne   .Lx736_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx736_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx736_51
                                                                              jmp   .Lx736_52
.Lx736_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx736_53
.Lx736_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx736_54
.Lx736_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx736_54
.Lx736_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx736_54:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n545_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n544_suspend_α
n543_call_builtin_prolog_β:
                                                                              jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n544_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx738_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx738_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n544_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n544_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n544_suspend_β:                                                               jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n546_var_ref_α
n545_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n547_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:      mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n548_call_builtin_prolog_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              rsi, qword ptr [rip + .Lx743_2];     jmp   .Lx743_3
.Lx743_2:               .quad            .Lx743_2_s
.Lx743_2_s:             .string          "expand"
.Lx743_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n559_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n549_var_ref_α
n548_call_builtin_prolog_β:
                                                                              jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n550_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 8
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n551_call_builtin_prolog_α
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              rsi, qword ptr [rip + .Lx747_2];     jmp   .Lx747_3
.Lx747_2:               .quad            .Lx747_2_s
.Lx747_2_s:             .string          "ssu_body"
.Lx747_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n559_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n552_var_ref_α
n551_call_builtin_prolog_β:
                                                                              jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 4
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n554_call_builtin_prolog_α
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              rsi, qword ptr [rip + .Lx751_2];     jmp   .Lx751_3
.Lx751_2:               .quad            .Lx751_2_s
.Lx751_2_s:             .string          "true"
.Lx751_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n559_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n555_var_ref_α
n554_call_builtin_prolog_β:
                                                                              jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 8
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n557_call_builtin_prolog_α
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              rsi, qword ptr [rip + .Lx755_2];     jmp   .Lx755_3
.Lx755_2:               .quad            .Lx755_2_s
.Lx755_2_s:             .string          "ssu_body"
.Lx755_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n559_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n558_suspend_α
n557_call_builtin_prolog_β:
                                                                              jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n558_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx757_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx757_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n558_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n558_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n558_suspend_β:                                                               jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n560_var_ref_α
n559_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 6
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n562_call_builtin_prolog_α
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              rsi, qword ptr [rip + .Lx762_2];     jmp   .Lx762_3
.Lx762_2:               .quad            .Lx762_2_s
.Lx762_2_s:             .string          "expand"
.Lx762_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n573_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n563_var_ref_α
n562_call_builtin_prolog_β:
                                                                              jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 9
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n565_call_builtin_prolog_α
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n565_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              rsi, qword ptr [rip + .Lx766_2];     jmp   .Lx766_3
.Lx766_2:               .quad            .Lx766_2_s
.Lx766_2_s:             .string          "ssu_guard"
.Lx766_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n573_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n566_var_ref_α
n565_call_builtin_prolog_β:
                                                                              jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 4
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n568_call_builtin_prolog_α
.Lx769_0:               .quad            .Lx769_0_s
.Lx769_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx770_2];     jmp   .Lx770_3
.Lx770_2:               .quad            .Lx770_2_s
.Lx770_2_s:             .string          "true"
.Lx770_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n573_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n569_var_ref_α
n568_call_builtin_prolog_β:
                                                                              jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 9
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n571_call_builtin_prolog_α
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n571_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              rsi, qword ptr [rip + .Lx774_2];     jmp   .Lx774_3
.Lx774_2:               .quad            .Lx774_2_s
.Lx774_2_s:             .string          "ssu_guard"
.Lx774_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n573_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n572_suspend_α
n571_call_builtin_prolog_β:
                                                                              jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n572_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx776_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx776_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n572_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n572_suspend_β]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n572_suspend_β:                                                               jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_test$2F4_ω
n573_call_builtin_prolog_β:
                                                                              jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n440_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx777_50
                        mov              qword ptr [rsp + 4608], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4608];         jmp   rax
.Lx777_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4696]
                        add              rsp, 4720;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 4704]
                        add              rsp, 4720;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__ssu_body$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
ssu_body$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx782_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx782_101
.Lx782_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx782_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx782_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx782_101
.Lx782_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx782_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    ssu_body$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n779_move_label_α
n778_call_builtin_prolog_β:
                                                                              jmp   ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_move_label_α:      lea              rax, [rip + n781_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   ssu_body$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n780_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    ssu_body$2F0_ω
                                                                              jmp   rax
n780_disjunction_β:                                                           jmp   ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    ssu_body$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   ssu_body$2F0_ω
n781_call_builtin_prolog_β:
                                                                              jmp   ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
ssu_body$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ssu_body$2F0_β:
                                                                              jmp   n780_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
ssu_body$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ssu_body$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ssu_body$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx788_2]
                        lea              rdx, [rip + .Lx788_3];               jmp   FN__ssu_body$2F0
.Lx788_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx788_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__term_expansion$2F2:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 640
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
term_expansion$2F2_α_body:
                        lea              rax, [rip + n796_suspend_β]
                        mov              qword ptr [rsp + 608], rax
#-----------------------------------------------------------------------------------------------------------------------
n789_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx809_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx809_101
.Lx809_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx809_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx809_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx809_101
.Lx809_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx809_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    term_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n790_var_ref_α
n789_call_builtin_prolog_β:
                                                                              jmp   term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n791_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 3
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n792_call_builtin_prolog_α
.Lx812_0:               .quad            .Lx812_0_s
.Lx812_0_s:             .string          "a2b"
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              rsi, qword ptr [rip + .Lx813_2];     jmp   .Lx813_3
.Lx813_2:               .quad            .Lx813_2_s
.Lx813_2_s:             .string          "a2b"
.Lx813_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n797_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n793_var_ref_α
n792_call_builtin_prolog_β:
                                                                              jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n794_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 3
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n795_call_builtin_prolog_α
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              rsi, qword ptr [rip + .Lx817_2];     jmp   .Lx817_3
.Lx817_2:               .quad            .Lx817_2_s
.Lx817_2_s:             .string          "b2c"
.Lx817_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n797_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n796_suspend_α
n795_call_builtin_prolog_β:
                                                                              jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx819_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 608];          jmp   rax
.Lx819_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n796_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n796_suspend_β]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   term_expansion$2F2_γ
n796_suspend_β:                                                               jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    term_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n798_var_ref_α
n797_call_builtin_prolog_β:
                                                                              jmp   term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 8
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n800_call_builtin_prolog_α
.Lx823_0:               .quad            .Lx823_0_s
.Lx823_0_s:             .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              rsi, qword ptr [rip + .Lx824_2];     jmp   .Lx824_3
.Lx824_2:               .quad            .Lx824_2_s
.Lx824_2_s:             .string          "make_dcg"
.Lx824_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n808_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n801_var_ref_α
n800_call_builtin_prolog_β:
                                                                              jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 3
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n803_lit_string_α
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n804_lit_string_α
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 0
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n805_call_builtin_prolog_α
.Lx829_0:               .quad            .Lx829_0_s
.Lx829_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n805_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n808_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n806_call_builtin_prolog_α
n805_call_builtin_prolog_β:
                                                                              jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n806_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx831_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx831_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx831_41
                        cmp              esi, 1;                              jne   .Lx831_55
                        mov              r8, rax;                             jmp   .Lx831_40
.Lx831_55:              cmp              esi, 2;                              jne   .Lx831_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx831_41
                        mov              r8, rax;                             jmp   .Lx831_40
.Lx831_56:              cmp              al, 72;                              jne   .Lx831_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx831_41
                        cmp              rax, r8;                             je    .Lx831_41
                        mov              r8, rax;                             jmp   .Lx831_40
.Lx831_41:              lea              r9, [rsp + 160]
.Lx831_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx831_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx831_43
                        cmp              esi, 1;                              jne   .Lx831_57
                        mov              r9, rax;                             jmp   .Lx831_42
.Lx831_57:              cmp              esi, 2;                              jne   .Lx831_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx831_43
                        mov              r9, rax;                             jmp   .Lx831_42
.Lx831_58:              cmp              al, 72;                              jne   .Lx831_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx831_43
                        cmp              rax, r9;                             je    .Lx831_43
                        mov              r9, rax;                             jmp   .Lx831_42
.Lx831_43:              cmp              r8, r9;                              je    .Lx831_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx831_44
                        cmp              al, 104;                             je    .Lx831_44
                        cmp              al, 72;                              jne   .Lx831_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx831_44
                                                                              jmp   .Lx831_45
.Lx831_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx831_53
                        cmp              al, 104;                             je    .Lx831_53
                        cmp              al, 72;                              jne   .Lx831_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx831_53
                                                                              jmp   .Lx831_46
.Lx831_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx831_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx831_51
.Lx831_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx831_47
                        cmp              al, 104;                             je    .Lx831_47
                        cmp              al, 72;                              jne   .Lx831_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx831_47
                                                                              jmp   .Lx831_48
.Lx831_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx831_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx831_51
.Lx831_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx831_49
                        cmp              dl, 80;                              je    .Lx831_53
                                                                              jmp   .Lx831_52
.Lx831_49:              cmp              dl, 80;                              je    .Lx831_52
                        cmp              cl, 5;                               je    .Lx831_53
                        cmp              dl, 5;                               je    .Lx831_53
                        cmp              cl, 3;                               jne   .Lx831_50
                        cmp              dl, 3;                               jne   .Lx831_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx831_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx831_51
                                                                              jmp   .Lx831_52
.Lx831_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx831_53
.Lx831_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx831_54
.Lx831_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx831_54
.Lx831_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx831_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n808_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n807_suspend_α
n806_call_builtin_prolog_β:
                                                                              jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n807_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx833_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 608];          jmp   rax
.Lx833_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n807_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n807_suspend_β]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   term_expansion$2F2_γ
n807_suspend_β:                                                               jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n808_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    term_expansion$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   term_expansion$2F2_ω
n808_call_builtin_prolog_β:
                                                                              jmp   term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
term_expansion$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
term_expansion$2F2_β:
                                                                              jmp   n796_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
term_expansion$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx834_50
                        mov              qword ptr [rsp + 608], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 608];          jmp   rax
.Lx834_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 648]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
term_expansion$2F2_ω:
                        mov              rcx, qword ptr [rsp + 656]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 608
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F1_α_body:
                        lea              rax, [rip + n844_suspend_β]
                        mov              qword ptr [rsp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n835_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx854_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx854_101
.Lx854_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx854_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx854_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx854_101
.Lx854_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx854_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n836_var_ref_α
n835_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n836_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n837_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n838_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lx859_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx859_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx859_41
                        cmp              esi, 1;                              jne   .Lx859_55
                        mov              r8, rax;                             jmp   .Lx859_40
.Lx859_55:              cmp              esi, 2;                              jne   .Lx859_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx859_41
                        mov              r8, rax;                             jmp   .Lx859_40
.Lx859_56:              cmp              al, 72;                              jne   .Lx859_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx859_41
                        cmp              rax, r8;                             je    .Lx859_41
                        mov              r8, rax;                             jmp   .Lx859_40
.Lx859_41:              lea              r9, [rsp + 512]
.Lx859_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx859_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx859_43
                        cmp              esi, 1;                              jne   .Lx859_57
                        mov              r9, rax;                             jmp   .Lx859_42
.Lx859_57:              cmp              esi, 2;                              jne   .Lx859_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx859_43
                        mov              r9, rax;                             jmp   .Lx859_42
.Lx859_58:              cmp              al, 72;                              jne   .Lx859_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx859_43
                        cmp              rax, r9;                             je    .Lx859_43
                        mov              r9, rax;                             jmp   .Lx859_42
.Lx859_43:              cmp              r8, r9;                              je    .Lx859_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx859_44
                        cmp              al, 104;                             je    .Lx859_44
                        cmp              al, 72;                              jne   .Lx859_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx859_44
                                                                              jmp   .Lx859_45
.Lx859_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx859_53
                        cmp              al, 104;                             je    .Lx859_53
                        cmp              al, 72;                              jne   .Lx859_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx859_53
                                                                              jmp   .Lx859_46
.Lx859_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx859_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx859_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx859_51
.Lx859_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx859_47
                        cmp              al, 104;                             je    .Lx859_47
                        cmp              al, 72;                              jne   .Lx859_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx859_47
                                                                              jmp   .Lx859_48
.Lx859_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx859_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx859_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx859_51
.Lx859_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx859_49
                        cmp              dl, 80;                              je    .Lx859_53
                                                                              jmp   .Lx859_52
.Lx859_49:              cmp              dl, 80;                              je    .Lx859_52
                        cmp              cl, 5;                               je    .Lx859_53
                        cmp              dl, 5;                               je    .Lx859_53
                        cmp              cl, 3;                               jne   .Lx859_50
                        cmp              dl, 3;                               jne   .Lx859_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx859_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx859_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx859_51
                                                                              jmp   .Lx859_52
.Lx859_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx859_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx859_53
.Lx859_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx859_54
.Lx859_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx859_54
.Lx859_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx859_54:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n845_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n839_lit_string_α
n838_call_builtin_prolog_β:
                                                                              jmp   n845_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n840_var_ref_α
.Lx860_0:               .quad            .Lx860_0_s
.Lx860_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n840_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n841_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_integer_α:     mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n842_call_builtin_prolog_α
.Lx863_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n842_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n845_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n843_call_proc_staged_α
n842_call_builtin_prolog_β:
                                                                              jmp   n845_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx866_20
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx866_21
.Lx866_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx866_21:              mov              rdi, qword ptr [rip + .Lx866_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx866_1
                        mov              rdi, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx866_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx866_3]
                        push             rcx
                        lea              rcx, [rip + .Lx866_3]
                        lea              rdx, [rip + .Lx866_4];               jmp   rax
.Lx866_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx866_2
.Lx866_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx866_2
.Lx866_1:               call             rt_faildescr@PLT
.Lx866_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx866_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx866_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n845_call_builtin_prolog_α
                                                                              jmp   n844_suspend_α
n843_call_proc_staged_β:
                                                                              jmp   n845_call_builtin_prolog_α
.Lx866_0:               .quad            .Lx866_0_s
.Lx866_0_s:             .string          "onetime/1"
#-----------------------------------------------------------------------------------------------------------------------
n844_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx868_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 560];          jmp   rax
.Lx868_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n844_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n844_suspend_β]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F1_γ
n844_suspend_β:                                                               jmp   n843_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n845_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n846_var_ref_α
n845_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n847_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n848_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
.Lx874_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx874_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx874_41
                        cmp              esi, 1;                              jne   .Lx874_55
                        mov              r8, rax;                             jmp   .Lx874_40
.Lx874_55:              cmp              esi, 2;                              jne   .Lx874_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx874_41
                        mov              r8, rax;                             jmp   .Lx874_40
.Lx874_56:              cmp              al, 72;                              jne   .Lx874_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx874_41
                        cmp              rax, r8;                             je    .Lx874_41
                        mov              r8, rax;                             jmp   .Lx874_40
.Lx874_41:              lea              r9, [rsp + 224]
.Lx874_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx874_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx874_43
                        cmp              esi, 1;                              jne   .Lx874_57
                        mov              r9, rax;                             jmp   .Lx874_42
.Lx874_57:              cmp              esi, 2;                              jne   .Lx874_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx874_43
                        mov              r9, rax;                             jmp   .Lx874_42
.Lx874_58:              cmp              al, 72;                              jne   .Lx874_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx874_43
                        cmp              rax, r9;                             je    .Lx874_43
                        mov              r9, rax;                             jmp   .Lx874_42
.Lx874_43:              cmp              r8, r9;                              je    .Lx874_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx874_44
                        cmp              al, 104;                             je    .Lx874_44
                        cmp              al, 72;                              jne   .Lx874_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx874_44
                                                                              jmp   .Lx874_45
.Lx874_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx874_53
                        cmp              al, 104;                             je    .Lx874_53
                        cmp              al, 72;                              jne   .Lx874_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx874_53
                                                                              jmp   .Lx874_46
.Lx874_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx874_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx874_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx874_51
.Lx874_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx874_47
                        cmp              al, 104;                             je    .Lx874_47
                        cmp              al, 72;                              jne   .Lx874_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx874_47
                                                                              jmp   .Lx874_48
.Lx874_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx874_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx874_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx874_51
.Lx874_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx874_49
                        cmp              dl, 80;                              je    .Lx874_53
                                                                              jmp   .Lx874_52
.Lx874_49:              cmp              dl, 80;                              je    .Lx874_52
                        cmp              cl, 5;                               je    .Lx874_53
                        cmp              dl, 5;                               je    .Lx874_53
                        cmp              cl, 3;                               jne   .Lx874_50
                        cmp              dl, 3;                               jne   .Lx874_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx874_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx874_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx874_51
                                                                              jmp   .Lx874_52
.Lx874_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx874_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx874_53
.Lx874_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx874_54
.Lx874_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx874_54
.Lx874_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx874_54:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n853_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n849_var_ref_α
n848_call_builtin_prolog_β:
                                                                              jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n849_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n850_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:     mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n851_call_builtin_prolog_α
.Lx877_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n851_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n853_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n852_suspend_α
n851_call_builtin_prolog_β:
                                                                              jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n852_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx880_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 560];          jmp   rax
.Lx880_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n852_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n852_suspend_β]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F1_γ
n852_suspend_β:                                                               jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj0$2F1_ω
n853_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_β:
                                                                              jmp   n844_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx881_50
                        mov              qword ptr [rsp + 560], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 560];          jmp   rax
.Lx881_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 616]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_foo_bar$2F0:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 192
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test_foo_bar$2F0_α_body:
                        lea              rax, [rip + n885_suspend_β]
                        mov              qword ptr [rsp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n882_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx887_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx887_101
.Lx887_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx887_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx887_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx887_101
.Lx887_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx887_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_foo_bar$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n883_lit_string_α
n882_call_builtin_prolog_β:
                                                                              jmp   test_foo_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 3
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n884_call_proc_staged_α
.Lx888_0:               .quad            .Lx888_0_s
.Lx888_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n884_call_proc_staged_α:
                        mov              qword ptr [rsp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx890_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx890_21
.Lx890_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx890_21:              lea              rax, [rip + .Lx890_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx890_1
                        lea              rcx, [rip + .Lx890_3]
                        lea              rdx, [rip + .Lx890_4];               jmp   rax
.Lx890_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx890_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx890_2
.Lx890_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx890_2
.Lx890_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx890_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx890_2
.Lx890_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx890_2
.Lx890_1:               call             rt_faildescr@PLT
.Lx890_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx890_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx890_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n886_call_builtin_prolog_α
                                                                              jmp   n885_suspend_α
n884_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n886_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 32
                        mov              r8d, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 6
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n886_call_builtin_prolog_α
                        lea              r11, [rip + .Lx890_7]
                        push             r11
                        lea              rcx, [rip + .Lx890_3]
                        lea              rdx, [rip + .Lx890_4];               jmp   rax
.Lx890_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n886_call_builtin_prolog_α
                                                                              jmp   n885_suspend_α
.Lx890_0:               .quad            .Lx890_0_s
.Lx890_0_s:             .string          "run/1"
#-----------------------------------------------------------------------------------------------------------------------
n885_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx892_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160];          jmp   rax
.Lx892_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n885_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n885_suspend_β]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_foo_bar$2F0_γ
n885_suspend_β:                                                               jmp   n884_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n886_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_foo_bar$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_foo_bar$2F0_ω
n886_call_builtin_prolog_β:
                                                                              jmp   test_foo_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_foo_bar$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_foo_bar$2F0_β:
                                                                              jmp   n885_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_foo_bar$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx893_50
                        mov              qword ptr [rsp + 160], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160];          jmp   rax
.Lx893_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 200]
                        add              rsp, 224;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_foo_bar$2F0_ω:
                        mov              rcx, qword ptr [rsp + 208]
                        add              rsp, 224;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__g_b$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
g_b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n894_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx898_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx898_101
.Lx898_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx898_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx898_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx898_101
.Lx898_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx898_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    g_b$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n895_move_label_α
n894_call_builtin_prolog_β:
                                                                              jmp   g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n895_move_label_α:      lea              rax, [rip + n897_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   g_b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n896_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    g_b$2F0_ω
                                                                              jmp   rax
n896_disjunction_β:                                                           jmp   g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n897_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    g_b$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   g_b$2F0_ω
n897_call_builtin_prolog_β:
                                                                              jmp   g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
g_b$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
g_b$2F0_β:
                                                                              jmp   n896_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
g_b$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_b$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_b$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx904_2]
                        lea              rdx, [rip + .Lx904_3];               jmp   FN__g_b$2F0
.Lx904_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx904_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__$3A$2F2:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 432
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$3A$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx918_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx918_101
.Lx918_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx918_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx918_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx918_101
.Lx918_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx918_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $3A$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n906_var_ref_α
n905_call_builtin_prolog_β:
                                                                              jmp   $3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 4
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n908_call_builtin_prolog_α
.Lx921_0:               .quad            .Lx921_0_s
.Lx921_0_s:             .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx922_2];     jmp   .Lx922_3
.Lx922_2:               .quad            .Lx922_2_s
.Lx922_2_s:             .string          "user"
.Lx922_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n917_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n909_var_ref_α
n908_call_builtin_prolog_β:
                                                                              jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 14
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n911_lit_string_α
.Lx925_0:               .quad            .Lx925_0_s
.Lx925_0_s:             .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n912_lit_string_α
.Lx926_0:               .quad            .Lx926_0_s
.Lx926_0_s:             .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 7
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n913_call_builtin_prolog_α
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n913_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n917_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n914_call_builtin_prolog_α
n913_call_builtin_prolog_β:
                                                                              jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n914_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        lea              r8, [rsp + 160]
.Lx929_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx929_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx929_41
                        cmp              esi, 1;                              jne   .Lx929_55
                        mov              r8, rax;                             jmp   .Lx929_40
.Lx929_55:              cmp              esi, 2;                              jne   .Lx929_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx929_41
                        mov              r8, rax;                             jmp   .Lx929_40
.Lx929_56:              cmp              al, 72;                              jne   .Lx929_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx929_41
                        cmp              rax, r8;                             je    .Lx929_41
                        mov              r8, rax;                             jmp   .Lx929_40
.Lx929_41:              lea              r9, [rsp + 176]
.Lx929_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx929_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx929_43
                        cmp              esi, 1;                              jne   .Lx929_57
                        mov              r9, rax;                             jmp   .Lx929_42
.Lx929_57:              cmp              esi, 2;                              jne   .Lx929_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx929_43
                        mov              r9, rax;                             jmp   .Lx929_42
.Lx929_58:              cmp              al, 72;                              jne   .Lx929_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx929_43
                        cmp              rax, r9;                             je    .Lx929_43
                        mov              r9, rax;                             jmp   .Lx929_42
.Lx929_43:              cmp              r8, r9;                              je    .Lx929_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx929_44
                        cmp              al, 104;                             je    .Lx929_44
                        cmp              al, 72;                              jne   .Lx929_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx929_44
                                                                              jmp   .Lx929_45
.Lx929_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx929_53
                        cmp              al, 104;                             je    .Lx929_53
                        cmp              al, 72;                              jne   .Lx929_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx929_53
                                                                              jmp   .Lx929_46
.Lx929_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx929_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx929_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx929_51
.Lx929_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx929_47
                        cmp              al, 104;                             je    .Lx929_47
                        cmp              al, 72;                              jne   .Lx929_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx929_47
                                                                              jmp   .Lx929_48
.Lx929_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx929_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx929_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx929_51
.Lx929_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx929_49
                        cmp              dl, 80;                              je    .Lx929_53
                                                                              jmp   .Lx929_52
.Lx929_49:              cmp              dl, 80;                              je    .Lx929_52
                        cmp              cl, 5;                               je    .Lx929_53
                        cmp              dl, 5;                               je    .Lx929_53
                        cmp              cl, 3;                               jne   .Lx929_50
                        cmp              dl, 3;                               jne   .Lx929_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx929_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx929_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx929_51
                                                                              jmp   .Lx929_52
.Lx929_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx929_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx929_53
.Lx929_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx929_54
.Lx929_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx929_54
.Lx929_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx929_54:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n917_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n915_move_label_α
n914_call_builtin_prolog_β:
                                                                              jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n915_move_label_α:      lea              rax, [rip + n917_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   $3A$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n916_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    $3A$2F2_ω
                                                                              jmp   rax
n916_disjunction_β:                                                           jmp   $3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n917_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    $3A$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $3A$2F2_ω
n917_call_builtin_prolog_β:
                                                                              jmp   $3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F2_β:
                                                                              jmp   n916_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F2_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx935_2]
                        lea              rdx, [rip + .Lx935_3];               jmp   FN__$3A$2F2
.Lx935_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx935_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__a2b$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
a2b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n936_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx940_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx940_101
.Lx940_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx940_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx940_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx940_101
.Lx940_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx940_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    a2b$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n937_move_label_α
n936_call_builtin_prolog_β:
                                                                              jmp   a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n937_move_label_α:      lea              rax, [rip + n939_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   a2b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n938_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    a2b$2F0_ω
                                                                              jmp   rax
n938_disjunction_β:                                                           jmp   a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n939_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    a2b$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   a2b$2F0_ω
n939_call_builtin_prolog_β:
                                                                              jmp   a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
a2b$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
a2b$2F0_β:
                                                                              jmp   n938_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
a2b$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a2b$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a2b$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx946_2]
                        lea              rdx, [rip + .Lx946_3];               jmp   FN__a2b$2F0
.Lx946_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx946_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__$2C$2F2:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 320
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$2C$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n947_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx957_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx957_101
.Lx957_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx957_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx957_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx957_101
.Lx957_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx957_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n948_var_ref_α
n947_call_builtin_prolog_β:
                                                                              jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 9
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n950_call_builtin_prolog_α
.Lx960_0:               .quad            .Lx960_0_s
.Lx960_0_s:             .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              rsi, qword ptr [rip + .Lx961_2];     jmp   .Lx961_3
.Lx961_2:               .quad            .Lx961_2_s
.Lx961_2_s:             .string          "ssu_guard"
.Lx961_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n956_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n951_var_ref_α
n950_call_builtin_prolog_β:
                                                                              jmp   n956_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n952_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n953_call_builtin_prolog_α
.Lx964_0:               .quad            .Lx964_0_s
.Lx964_0_s:             .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n953_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx965_2];     jmp   .Lx965_3
.Lx965_2:               .quad            .Lx965_2_s
.Lx965_2_s:             .string          "g_b"
.Lx965_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n956_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n954_move_label_α
n953_call_builtin_prolog_β:
                                                                              jmp   n956_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n954_move_label_α:      lea              rax, [rip + n956_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   $2C$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n955_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    $2C$2F2_ω
                                                                              jmp   rax
n955_disjunction_β:                                                           jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n956_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $2C$2F2_ω
n956_call_builtin_prolog_β:
                                                                              jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_β:
                                                                              jmp   n955_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx971_2]
                        lea              rdx, [rip + .Lx971_3];               jmp   FN__$2C$2F2
.Lx971_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx971_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__one$2F1:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 304
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
one$2F1_α_body:
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n972_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx980_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx980_101
.Lx980_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx980_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx980_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx980_101
.Lx980_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx980_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    one$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n973_var_ref_α
n972_call_builtin_prolog_β:
                                                                              jmp   one$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n973_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n974_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n974_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n975_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n975_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx985_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx985_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx985_41
                        cmp              esi, 1;                              jne   .Lx985_55
                        mov              r8, rax;                             jmp   .Lx985_40
.Lx985_55:              cmp              esi, 2;                              jne   .Lx985_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx985_41
                        mov              r8, rax;                             jmp   .Lx985_40
.Lx985_56:              cmp              al, 72;                              jne   .Lx985_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx985_41
                        cmp              rax, r8;                             je    .Lx985_41
                        mov              r8, rax;                             jmp   .Lx985_40
.Lx985_41:              lea              r9, [rsp + 208]
.Lx985_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx985_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx985_43
                        cmp              esi, 1;                              jne   .Lx985_57
                        mov              r9, rax;                             jmp   .Lx985_42
.Lx985_57:              cmp              esi, 2;                              jne   .Lx985_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx985_43
                        mov              r9, rax;                             jmp   .Lx985_42
.Lx985_58:              cmp              al, 72;                              jne   .Lx985_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx985_43
                        cmp              rax, r9;                             je    .Lx985_43
                        mov              r9, rax;                             jmp   .Lx985_42
.Lx985_43:              cmp              r8, r9;                              je    .Lx985_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx985_44
                        cmp              al, 104;                             je    .Lx985_44
                        cmp              al, 72;                              jne   .Lx985_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx985_44
                                                                              jmp   .Lx985_45
.Lx985_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx985_53
                        cmp              al, 104;                             je    .Lx985_53
                        cmp              al, 72;                              jne   .Lx985_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx985_53
                                                                              jmp   .Lx985_46
.Lx985_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx985_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx985_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx985_51
.Lx985_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx985_47
                        cmp              al, 104;                             je    .Lx985_47
                        cmp              al, 72;                              jne   .Lx985_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx985_47
                                                                              jmp   .Lx985_48
.Lx985_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx985_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx985_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx985_51
.Lx985_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx985_49
                        cmp              dl, 80;                              je    .Lx985_53
                                                                              jmp   .Lx985_52
.Lx985_49:              cmp              dl, 80;                              je    .Lx985_52
                        cmp              cl, 5;                               je    .Lx985_53
                        cmp              dl, 5;                               je    .Lx985_53
                        cmp              cl, 3;                               jne   .Lx985_50
                        cmp              dl, 3;                               jne   .Lx985_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx985_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx985_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx985_51
                                                                              jmp   .Lx985_52
.Lx985_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx985_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx985_53
.Lx985_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx985_54
.Lx985_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx985_54
.Lx985_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx985_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n979_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n976_var_ref_α
n975_call_builtin_prolog_β:
                                                                              jmp   n979_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n976_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 272]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n977_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n977_call_proc_staged_α:
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx989_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx989_21
.Lx989_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx989_21:              lea              rax, [rip + .Lx989_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx989_1
                        lea              rcx, [rip + .Lx989_3]
                        lea              rdx, [rip + .Lx989_4];               jmp   rax
.Lx989_3:               mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx989_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx989_2
.Lx989_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx989_2
.Lx989_4:               mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx989_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx989_2
.Lx989_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx989_2
.Lx989_1:               call             rt_faildescr@PLT
.Lx989_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx989_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx989_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n979_call_builtin_prolog_α
                                                                              jmp   n978_suspend_α
n977_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n979_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              ecx, 32
                        mov              r8d, 560
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n979_call_builtin_prolog_α
                        lea              r11, [rip + .Lx989_7]
                        push             r11
                        lea              rcx, [rip + .Lx989_3]
                        lea              rdx, [rip + .Lx989_4];               jmp   rax
.Lx989_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n979_call_builtin_prolog_α
                                                                              jmp   n978_suspend_α
.Lx989_0:               .quad            .Lx989_0_s
.Lx989_0_s:             .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n978_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx991_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx991_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n978_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   one$2F1_γ
n978_suspend_β:                                                               jmp   n977_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n979_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    one$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   one$2F1_ω
n979_call_builtin_prolog_β:
                                                                              jmp   one$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
one$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
one$2F1_β:
                                                                              jmp   n978_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
one$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx992_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx992_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
one$2F1_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__make_dcg$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
make_dcg$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n993_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx997_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx997_101
.Lx997_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx997_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx997_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx997_101
.Lx997_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx997_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    make_dcg$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n994_move_label_α
n993_call_builtin_prolog_β:
                                                                              jmp   make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n994_move_label_α:      lea              rax, [rip + n996_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   make_dcg$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n995_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    make_dcg$2F0_ω
                                                                              jmp   rax
n995_disjunction_β:                                                           jmp   make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n996_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    make_dcg$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   make_dcg$2F0_ω
n996_call_builtin_prolog_β:
                                                                              jmp   make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
make_dcg$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
make_dcg$2F0_β:
                                                                              jmp   n995_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
make_dcg$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
make_dcg$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
make_dcg$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1003_2]
                        lea              rdx, [rip + .Lx1003_3];              jmp   FN__make_dcg$2F0
.Lx1003_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1003_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_6$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n1007_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1004_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1009_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1009_101
.Lx1009_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1009_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1009_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1009_101
.Lx1009_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1009_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1005_lit_string_α
n1004_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1005_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1006_call_proc_staged_α
.Lx1010_0:              .quad            .Lx1010_0_s
.Lx1010_0_s:            .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1006_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1012_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1012_21
.Lx1012_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1012_21:             mov              rdi, qword ptr [rip + .Lx1012_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1012_1
                        mov              rdi, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1012_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1012_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1012_3]
                        lea              rdx, [rip + .Lx1012_4];              jmp   rax
.Lx1012_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1012_2
.Lx1012_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1012_2
.Lx1012_1:              call             rt_faildescr@PLT
.Lx1012_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1012_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1012_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1008_call_builtin_prolog_α
                                                                              jmp   n1007_suspend_α
n1006_call_proc_staged_β:
                                                                              jmp   n1008_call_builtin_prolog_α
.Lx1012_0:              .quad            .Lx1012_0_s
.Lx1012_0_s:            .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1007_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1014_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx1014_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1007_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1007_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_6$2F0_γ
n1007_suspend_β:                                                              jmp   n1006_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1008_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_6$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_6$2F0_ω
n1008_call_builtin_prolog_β:
                                                                              jmp   pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_β:
                                                                              jmp   n1007_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1015_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx1015_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_6$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_4$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n1021_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1023_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1023_101
.Lx1023_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1023_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1023_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1023_101
.Lx1023_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1023_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1017_lit_string_α
n1016_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1017_lit_string_α:     mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1018_lit_integer_α
.Lx1024_0:              .quad            .Lx1024_0_s
.Lx1024_0_s:            .string          "run"
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_integer_α:    mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1019_call_builtin_prolog_α
.Lx1025_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1019_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n1022_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1020_call_proc_staged_α
n1019_call_builtin_prolog_β:
                                                                              jmp   n1022_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1028_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1028_21
.Lx1028_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1028_21:             mov              rdi, qword ptr [rip + .Lx1028_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1028_1
                        mov              rdi, qword ptr [rip + .Lx1028_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1028_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1028_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1028_3]
                        lea              rdx, [rip + .Lx1028_4];              jmp   rax
.Lx1028_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1028_2
.Lx1028_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1028_2
.Lx1028_1:              call             rt_faildescr@PLT
.Lx1028_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1028_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1028_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1022_call_builtin_prolog_α
                                                                              jmp   n1021_suspend_α
n1020_call_proc_staged_β:
                                                                              jmp   n1022_call_builtin_prolog_α
.Lx1028_0:              .quad            .Lx1028_0_s
.Lx1028_0_s:            .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n1021_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1030_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx1030_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1021_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1021_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n1021_suspend_β:                                                              jmp   n1020_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_4$2F0_ω
n1022_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n1021_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1031_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx1031_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__bar$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
bar$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1032_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1036_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx1036_101
.Lx1036_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1036_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1036_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1036_101
.Lx1036_100:            lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1036_101:            mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    bar$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1033_move_label_α
n1032_call_builtin_prolog_β:
                                                                              jmp   bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1033_move_label_α:     lea              rax, [rip + n1035_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   bar$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1034_disjunction_α:    mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    bar$2F0_ω
                                                                              jmp   rax
n1034_disjunction_β:                                                          jmp   bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1035_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    bar$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   bar$2F0_ω
n1035_call_builtin_prolog_β:
                                                                              jmp   bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
bar$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
bar$2F0_β:
                                                                              jmp   n1034_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
bar$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bar$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bar$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1042_2]
                        lea              rdx, [rip + .Lx1042_3];              jmp   FN__bar$2F0
.Lx1042_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1042_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n1043_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1063_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1063_101
.Lx1063_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1063_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1063_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1063_101
.Lx1063_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1063_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1044_lit_string_α
n1043_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:     mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1045_lit_string_α
.Lx1064_0:              .quad            .Lx1064_0_s
.Lx1064_0_s:            .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1045_lit_string_α:     mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1046_lit_string_α
.Lx1065_0:              .quad            .Lx1065_0_s
.Lx1065_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:     mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1047_lit_string_α
.Lx1066_0:              .quad            .Lx1066_0_s
.Lx1066_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1048_lit_string_α
.Lx1067_0:              .quad            .Lx1067_0_s
.Lx1067_0_s:            .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:     mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 14
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1049_call_builtin_prolog_α
.Lx1068_0:              .quad            .Lx1068_0_s
.Lx1068_0_s:            .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1049_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1050_lit_integer_α
n1049_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_integer_α:    mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1051_call_builtin_prolog_α
.Lx1070_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1051_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1052_lit_string_α
n1051_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:     mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1053_lit_string_α
.Lx1072_0:              .quad            .Lx1072_0_s
.Lx1072_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1053_lit_string_α:     mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1054_lit_string_α
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:     mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 4
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1055_lit_string_α
.Lx1074_0:              .quad            .Lx1074_0_s
.Lx1074_0_s:            .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1055_lit_string_α:     mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 14
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1056_call_builtin_prolog_α
.Lx1075_0:              .quad            .Lx1075_0_s
.Lx1075_0_s:            .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1057_lit_integer_α
n1056_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1057_lit_integer_α:    mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1058_call_builtin_prolog_α
.Lx1077_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1058_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1059_call_builtin_prolog_α
n1058_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n1062_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1060_call_proc_staged_α
n1059_call_builtin_prolog_β:
                                                                              jmp   n1062_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1081_20
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1081_21
.Lx1081_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1081_21:             mov              rdi, qword ptr [rip + .Lx1081_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1081_1
                        mov              rdi, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1081_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1081_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1081_3]
                        lea              rdx, [rip + .Lx1081_4];              jmp   rax
.Lx1081_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1081_2
.Lx1081_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1081_2
.Lx1081_1:              call             rt_faildescr@PLT
.Lx1081_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1081_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1081_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1062_call_builtin_prolog_α
                                                                              jmp   n1061_suspend_α
n1060_call_proc_staged_β:
                                                                              jmp   n1062_call_builtin_prolog_α
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n1061_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1083_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx1083_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1061_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n1061_suspend_β:                                                              jmp   n1060_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1062_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_2$2F0_ω
n1062_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n1061_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1084_50
                        mov              qword ptr [rsp + 704], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx1084_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n1095_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1085_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1097_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1097_101
.Lx1097_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1097_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1097_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1097_101
.Lx1097_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1097_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1086_lit_string_α
n1085_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1086_lit_string_α:     mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 11
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1087_lit_string_α
.Lx1098_0:              .quad            .Lx1098_0_s
.Lx1098_0_s:            .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1087_lit_string_α:     mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1088_lit_string_α
.Lx1099_0:              .quad            .Lx1099_0_s
.Lx1099_0_s:            .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1088_lit_string_α:     mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1089_lit_string_α
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1089_lit_string_α:     mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1090_lit_integer_α
.Lx1101_0:              .quad            .Lx1101_0_s
.Lx1101_0_s:            .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1090_lit_integer_α:    mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1091_call_builtin_prolog_α
.Lx1102_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1091_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1092_lit_string_α
n1091_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1092_lit_string_α:     mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1093_call_builtin_prolog_α
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1093_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n1096_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1094_call_proc_staged_α
n1093_call_builtin_prolog_β:
                                                                              jmp   n1096_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1094_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1107_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1107_21
.Lx1107_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1107_21:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1107_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx1107_23
.Lx1107_22:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1107_23:             mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1107_1
                        mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1107_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1107_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1107_3]
                        lea              rdx, [rip + .Lx1107_4];              jmp   rax
.Lx1107_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1107_2
.Lx1107_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1107_2
.Lx1107_1:              call             rt_faildescr@PLT
.Lx1107_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1107_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1107_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1096_call_builtin_prolog_α
                                                                              jmp   n1095_suspend_α
n1094_call_proc_staged_β:
                                                                              jmp   n1096_call_builtin_prolog_α
.Lx1107_0:              .quad            .Lx1107_0_s
.Lx1107_0_s:            .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1095_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1109_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx1109_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1095_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1095_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n1095_suspend_β:                                                              jmp   n1094_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_0$2F0_ω
n1096_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n1095_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1110_50
                        mov              qword ptr [rsp + 400], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx1110_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__g_c$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
g_c$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1111_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1115_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx1115_101
.Lx1115_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1115_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1115_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1115_101
.Lx1115_100:            lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1115_101:            mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    g_c$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1112_move_label_α
n1111_call_builtin_prolog_β:
                                                                              jmp   g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1112_move_label_α:     lea              rax, [rip + n1114_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   g_c$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1113_disjunction_α:    mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    g_c$2F0_ω
                                                                              jmp   rax
n1113_disjunction_β:                                                          jmp   g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    g_c$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   g_c$2F0_ω
n1114_call_builtin_prolog_β:
                                                                              jmp   g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
g_c$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
g_c$2F0_β:
                                                                              jmp   n1113_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
g_c$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_c$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
g_c$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1121_2]
                        lea              rdx, [rip + .Lx1121_3];              jmp   FN__g_c$2F0
.Lx1121_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1121_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_5$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1122_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1127_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1127_101
.Lx1127_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1127_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1127_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1127_101
.Lx1127_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1127_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1123_lit_string_α
n1122_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1123_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1124_call_proc_staged_α
.Lx1128_0:              .quad            .Lx1128_0_s
.Lx1128_0_s:            .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1130_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1130_21
.Lx1130_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1130_21:             mov              rdi, qword ptr [rip + .Lx1130_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1130_1
                        mov              rdi, qword ptr [rip + .Lx1130_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1130_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1130_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1130_3]
                        lea              rdx, [rip + .Lx1130_4];              jmp   rax
.Lx1130_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1130_2
.Lx1130_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1130_2
.Lx1130_1:              call             rt_faildescr@PLT
.Lx1130_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1130_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1130_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1126_call_builtin_prolog_α
                                                                              jmp   n1125_suspend_α
n1124_call_proc_staged_β:
                                                                              jmp   n1126_call_builtin_prolog_α
.Lx1130_0:              .quad            .Lx1130_0_s
.Lx1130_0_s:            .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1125_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1132_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx1132_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1125_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_5$2F0_γ
n1125_suspend_β:                                                              jmp   n1124_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_5$2F0_ω
n1126_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_β:
                                                                              jmp   n1125_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1133_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx1133_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1140_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1134_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1142_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1142_101
.Lx1142_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1142_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1142_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1142_101
.Lx1142_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1142_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1135_lit_string_α
n1134_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:     mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1136_lit_string_α
.Lx1143_0:              .quad            .Lx1143_0_s
.Lx1143_0_s:            .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1136_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 14
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1137_lit_integer_α
.Lx1144_0:              .quad            .Lx1144_0_s
.Lx1144_0_s:            .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_integer_α:    mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1138_call_builtin_prolog_α
.Lx1145_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n1141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1139_call_proc_staged_α
n1138_call_builtin_prolog_β:
                                                                              jmp   n1141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1148_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1148_21
.Lx1148_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1148_21:             mov              rdi, qword ptr [rip + .Lx1148_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1148_1
                        mov              rdi, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1148_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1148_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1148_3]
                        lea              rdx, [rip + .Lx1148_4];              jmp   rax
.Lx1148_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1148_2
.Lx1148_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1148_2
.Lx1148_1:              call             rt_faildescr@PLT
.Lx1148_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1148_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1148_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1141_call_builtin_prolog_α
                                                                              jmp   n1140_suspend_α
n1139_call_proc_staged_β:
                                                                              jmp   n1141_call_builtin_prolog_α
.Lx1148_0:              .quad            .Lx1148_0_s
.Lx1148_0_s:            .string          "discontiguous/1"
#-----------------------------------------------------------------------------------------------------------------------
n1140_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1150_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx1150_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1140_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1140_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n1140_suspend_β:                                                              jmp   n1139_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_3$2F0_ω
n1141_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n1140_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1151_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx1151_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1157_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx1159_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx1159_101
.Lx1159_102:            lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx1159_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx1159_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx1159_101
.Lx1159_100:            lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1159_101:            mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1153_lit_string_α
n1152_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1153_lit_string_α:     mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1154_lit_string_α
.Lx1160_0:              .quad            .Lx1160_0_s
.Lx1160_0_s:            .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1155_call_builtin_prolog_α
.Lx1161_0:              .quad            .Lx1161_0_s
.Lx1161_0_s:            .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n1158_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1156_call_proc_staged_α
n1155_call_builtin_prolog_β:
                                                                              jmp   n1158_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1164_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1164_21
.Lx1164_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1164_21:             mov              rdi, qword ptr [rip + .Lx1164_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1164_1
                        mov              rdi, qword ptr [rip + .Lx1164_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1164_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1164_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1164_3]
                        lea              rdx, [rip + .Lx1164_4];              jmp   rax
.Lx1164_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1164_2
.Lx1164_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1164_2
.Lx1164_1:              call             rt_faildescr@PLT
.Lx1164_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1164_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx1164_29:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n1158_call_builtin_prolog_α
                                                                              jmp   n1157_suspend_α
n1156_call_proc_staged_β:
                                                                              jmp   n1158_call_builtin_prolog_α
.Lx1164_0:              .quad            .Lx1164_0_s
.Lx1164_0_s:            .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1157_suspend_α:        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx1166_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx1166_61:             mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n1157_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n1157_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n1157_suspend_β:                                                              jmp   n1156_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_1$2F0_ω
n1158_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n1157_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx1167_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx1167_50:             mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rcx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_string_α:     mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 6
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1169_call_proc_staged_α
.Lx1170_0:              .quad            .Lx1170_0_s
.Lx1170_0_s:            .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1169_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx1172_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx1172_21
.Lx1172_20:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx1172_21:             mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1172_1
                        mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx1172_4]               # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx1172_3]
                        push             rcx
                        lea              rcx, [rip + .Lx1172_3]
                        lea              rdx, [rip + .Lx1172_4];              jmp   rax
.Lx1172_3:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1172_2
.Lx1172_4:              mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx1172_2
.Lx1172_1:              call             rt_faildescr@PLT
.Lx1172_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1172_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1172_29:             mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n1169_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 88]
                        add              rsp, 112;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 96]
                        add              rsp, 112;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "true/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__true$2F0
                        .quad            true$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__test$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "clause/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__clause$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "current_predicate/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__current_predicate$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            112
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "test/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__test$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3088
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$call/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__$call$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            112
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "run/1"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__run$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            288
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "e_not/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__e_not$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            144
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "test_expand/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__test_expand$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "goal_expansion/2"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__goal_expansion$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1040
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_test/4"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__pj_test$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            4672
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "ssu_body/0"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__ssu_body$2F0
                        .quad            ssu_body$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "term_expansion/2"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__term_expansion$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            624
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "$disj0/1"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__$disj0$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            592
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "test_foo_bar/0"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__test_foo_bar$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            176
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "g_b/0"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__g_b$2F0
                        .quad            g_b$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          ":/2"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__$3A$2F2
                        .quad            $3A$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            416
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "a2b/0"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__a2b$2F0
                        .quad            a2b$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          ",/2"
                        .align           8
.Lstartup_prec18:
                        .quad            .Lstartup_pname18
                        .quad            FN__$2C$2F2
                        .quad            $2C$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec18]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "one/1"
                        .align           8
.Lstartup_prec19:
                        .quad            .Lstartup_pname19
                        .quad            FN__one$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            288
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec19]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "make_dcg/0"
                        .align           8
.Lstartup_prec20:
                        .quad            .Lstartup_pname20
                        .quad            FN__make_dcg$2F0
                        .quad            make_dcg$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec20]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "pj_dir_6/0"
                        .align           8
.Lstartup_prec21:
                        .quad            .Lstartup_pname21
                        .quad            FN__pj_dir_6$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec21]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec22:
                        .quad            .Lstartup_pname22
                        .quad            FN__pj_dir_4$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec22]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "bar/0"
                        .align           8
.Lstartup_prec23:
                        .quad            .Lstartup_pname23
                        .quad            FN__bar$2F0
                        .quad            bar$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec23]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname24:      .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec24:
                        .quad            .Lstartup_pname24
                        .quad            FN__pj_dir_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec24]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname25:      .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec25:
                        .quad            .Lstartup_pname25
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec25]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname26:      .string          "g_c/0"
                        .align           8
.Lstartup_prec26:
                        .quad            .Lstartup_pname26
                        .quad            FN__g_c$2F0
                        .quad            g_c$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec26]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname27:      .string          "pj_dir_5/0"
                        .align           8
.Lstartup_prec27:
                        .quad            .Lstartup_pname27
                        .quad            FN__pj_dir_5$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec27]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname28:      .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec28:
                        .quad            .Lstartup_pname28
                        .quad            FN__pj_dir_3$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec28]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname29:      .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec29:
                        .quad            .Lstartup_pname29
                        .quad            FN__pj_dir_1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec29]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
