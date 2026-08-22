                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx8_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx8_101
.Lx8_102:               lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx8_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx8_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx8_101
.Lx8_100:               lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx8_101:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 33
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n3_call_builtin_prolog_α
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "local_stack_expansion_pending_chp"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx12_2];      jmp   .Lx12_3
.Lx12_2:                .quad            .Lx12_2_s
.Lx12_2_s:              .string          "local_stack_expansion_pending_chp"
.Lx12_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_call_proc_staged_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:  mov              r11, 5
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx14_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx14_1
                        lea              rcx, [rip + .Lx14_3]
                        lea              rdx, [rip + .Lx14_4];                jmp   rax
.Lx14_3:                mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx14_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx14_2
.Lx14_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx14_2
.Lx14_4:                mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx14_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx14_2
.Lx14_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx14_2
.Lx14_1:                call             rt_faildescr@PLT
.Lx14_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx14_29
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
.Lx14_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n5_cut_α
n4_call_proc_staged_β:  mov              r11, 5
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
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
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        lea              r11, [rip + .Lx14_7]
                        push             r11
                        lea              rcx, [rip + .Lx14_3]
                        lea              rdx, [rip + .Lx14_4];                jmp   rax
.Lx14_7:                add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n5_cut_α
.Lx14_0:                .quad            .Lx14_0_s
.Lx14_0_s:              .string          "test2_1/0"
#-----------------------------------------------------------------------------------------------------------------------
n5_cut_α:               mov              r11, 6;                              jmp   n6_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx17_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx17_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n6_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n6_suspend_β:           mov              r11, 7;                              jmp   n4_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
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
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx18_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx18_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test2_2$2F0:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test2_2$2F0_α_body:
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rsp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 9
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx25_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx25_101
.Lx25_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx25_101
.Lx25_100:              lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx25_101:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test2_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_call_proc_staged_α
n19_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   test2_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α: mov              r11, 10
                        mov              qword ptr [rsp + 208], 0
                        lea              rax, [rip + .Lx27_7]
                        push             rax
                        mov              edi, 10
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx27_1
                        lea              rcx, [rip + .Lx27_3]
                        lea              rdx, [rip + .Lx27_4];                jmp   rax
.Lx27_3:                mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx27_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx27_2
.Lx27_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx27_2
.Lx27_4:                mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx27_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx27_2
.Lx27_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx27_2
.Lx27_1:                call             rt_faildescr@PLT
.Lx27_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx27_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx27_29:               mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n23_call_proc_staged_α
                                                                              jmp   n21_call_proc_staged_α
n20_call_proc_staged_β: mov              r11, 10
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 208], 0
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n23_call_proc_staged_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              ecx, 16
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 10
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n23_call_proc_staged_α
                        lea              r11, [rip + .Lx27_7]
                        push             r11
                        lea              rcx, [rip + .Lx27_3]
                        lea              rdx, [rip + .Lx27_4];                jmp   rax
.Lx27_7:                add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n23_call_proc_staged_α
                                                                              jmp   n21_call_proc_staged_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "cp/0"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α: mov              r11, 11
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx29_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx29_1
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4];                jmp   rax
.Lx29_3:                mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx29_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx29_2
.Lx29_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx29_2
.Lx29_4:                mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx29_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx29_2
.Lx29_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx29_2
.Lx29_1:                call             rt_faildescr@PLT
.Lx29_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx29_29
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
.Lx29_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                                                                              jmp   n22_suspend_α
n21_call_proc_staged_β: mov              r11, 11
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n24_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 16
                        mov              r8d, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n24_call_builtin_prolog_α
                        lea              r11, [rip + .Lx29_7]
                        push             r11
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4];                jmp   rax
.Lx29_7:                add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                                                                              jmp   n22_suspend_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "lshift/0"
#-----------------------------------------------------------------------------------------------------------------------
n22_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx31_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240];          jmp   rax
.Lx31_61:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n22_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test2_2$2F0_γ
n22_suspend_β:          mov              r11, 12;                             jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α: mov              r11, 13
                        mov              qword ptr [rsp + 160], 0
                        lea              rax, [rip + .Lx33_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx33_1
                        lea              rcx, [rip + .Lx33_3]
                        lea              rdx, [rip + .Lx33_4];                jmp   rax
.Lx33_3:                mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx33_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx33_2
.Lx33_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx33_2
.Lx33_4:                mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx33_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx33_2
.Lx33_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx33_2
.Lx33_1:                call             rt_faildescr@PLT
.Lx33_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx33_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx33_29:               mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                                                                              jmp   n24_call_builtin_prolog_α
n23_call_proc_staged_β: mov              r11, 13
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n24_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 16
                        mov              r8d, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n24_call_builtin_prolog_α
                        lea              r11, [rip + .Lx33_7]
                        push             r11
                        lea              rcx, [rip + .Lx33_3]
                        lea              rdx, [rip + .Lx33_4];                jmp   rax
.Lx33_7:                add              rsp, 8
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                                                                              jmp   n24_call_builtin_prolog_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "lshift/0"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 14
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
                        cmp              al, 104;                             je    test2_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test2_2$2F0_ω
n24_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   test2_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test2_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test2_2$2F0_β:
                                                                              jmp   n22_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test2_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx34_50
                        mov              qword ptr [rsp + 240], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240];          jmp   rax
.Lx34_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test2_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__local_stack_expansion_many_chp$2F0:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
local_stack_expansion_many_chp$2F0_α_body:
                        lea              rax, [rip + n47_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 15
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx49_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx49_101
.Lx49_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx49_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx49_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx49_101
.Lx49_100:              lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx49_101:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    local_stack_expansion_many_chp$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   local_stack_expansion_many_chp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α: mov              r11, 17
                        lea              rsi, [rsp + 400]
                        call             or_dept$2F1_dcα;                     jmp   .Lx53_2
.Lx53_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx53_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx53_29:               mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                                                                              jmp   n38_call_proc_staged_α
n37_call_proc_staged_β: mov              r11, 17;                             jmp   n48_call_builtin_prolog_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "or_dept/1"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α: mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx55_1
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx55_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx55_3]
                        push             rcx
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4];                jmp   rax
.Lx55_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx55_2
.Lx55_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx55_2
.Lx55_1:                call             rt_faildescr@PLT
.Lx55_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx55_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx55_29:               mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n37_call_proc_staged_β
                                                                              jmp   n39_var_ref_α
n38_call_proc_staged_β: mov              r11, 18;                             jmp   n37_call_proc_staged_β
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n41_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 21
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 304]
                        call             make_or$2F2_dcα;                     jmp   .Lx61_2
.Lx61_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx61_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx61_29:               mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n38_call_proc_staged_β
                                                                              jmp   n42_lit_string_α
n41_call_proc_staged_β: mov              r11, 21;                             jmp   n38_call_proc_staged_β
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "make_or/2"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 9
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n43_call_builtin_prolog_α
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "asserta/2"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn64:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n41_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_call_proc_staged_α
n43_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n41_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n44_call_proc_staged_α: mov              r11, 24
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx66_1
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx66_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx66_3]
                        push             rcx
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4];                jmp   rax
.Lx66_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx66_2
.Lx66_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx66_2
.Lx66_1:                call             rt_faildescr@PLT
.Lx66_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx66_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx66_29:               mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n41_call_proc_staged_β
                                                                              jmp   n45_var_ref_α
n44_call_proc_staged_β: mov              r11, 24;                             jmp   n41_call_proc_staged_β
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "t/0"
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n46_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α: mov              r11, 26
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx70_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx70_21
.Lx70_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx70_21:               mov              rdi, qword ptr [rip + .Lx70_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx70_1
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx70_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx70_3]
                        push             rcx
                        lea              rcx, [rip + .Lx70_3]
                        lea              rdx, [rip + .Lx70_4];                jmp   rax
.Lx70_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx70_2
.Lx70_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx70_2
.Lx70_1:                call             rt_faildescr@PLT
.Lx70_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx70_29
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
.Lx70_29:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n41_call_proc_staged_β
                                                                              jmp   n47_suspend_α
n46_call_proc_staged_β: mov              r11, 26;                             jmp   n41_call_proc_staged_β
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n47_suspend_α:          mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx72_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx72_61:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n47_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n47_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   local_stack_expansion_many_chp$2F0_γ
n47_suspend_β:          mov              r11, 27;                             jmp   n46_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 28
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
                        cmp              al, 104;                             je    local_stack_expansion_many_chp$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   local_stack_expansion_many_chp$2F0_ω
n48_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   local_stack_expansion_many_chp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
local_stack_expansion_many_chp$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
local_stack_expansion_many_chp$2F0_β:
                                                                              jmp   n47_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
local_stack_expansion_many_chp$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx73_50
                        mov              qword ptr [rsp + 416], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx73_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
local_stack_expansion_many_chp$2F0_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 624
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 29
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx93_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx93_101
.Lx93_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx93_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx93_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx93_101
.Lx93_100:              lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx93_101:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 8
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n77_call_builtin_prolog_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              rsi, qword ptr [rip + .Lx97_2];      jmp   .Lx97_3
.Lx97_2:                .quad            .Lx97_2_s
.Lx97_2_s:              .string          "ch_shift"
.Lx97_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n92_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 33
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n80_call_builtin_prolog_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "local_stack_expansion_pending_chp"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              rsi, qword ptr [rip + .Lx101_2];     jmp   .Lx101_3
.Lx101_2:               .quad            .Lx101_2_s
.Lx101_2_s:             .string          "local_stack_expansion_pending_chp"
.Lx101_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n92_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 2
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n83_call_builtin_prolog_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              rsi, qword ptr [rip + .Lx105_2];     jmp   .Lx105_3
.Lx105_2:               .quad            .Lx105_2_s
.Lx105_2_s:             .string          "[]"
.Lx105_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n92_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n86_lit_string_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 7
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n87_lit_string_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "test2_1"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n88_call_builtin_prolog_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 248]
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
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n92_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx112_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              esi, 1;                              jne   .Lx112_55
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_55:              cmp              esi, 2;                              jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_56:              cmp              al, 72;                              jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              rax, r8;                             je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_41:              lea              r9, [rsp + 208]
.Lx112_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              esi, 1;                              jne   .Lx112_57
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_57:              cmp              esi, 2;                              jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_58:              cmp              al, 72;                              jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              rax, r9;                             je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_43:              cmp              r8, r9;                              je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx112_44
                        cmp              al, 104;                             je    .Lx112_44
                        cmp              al, 72;                              jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx112_44
                                                                              jmp   .Lx112_45
.Lx112_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_53
                        cmp              al, 104;                             je    .Lx112_53
                        cmp              al, 72;                              jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_53
                                                                              jmp   .Lx112_46
.Lx112_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx112_51
.Lx112_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_47
                        cmp              al, 104;                             je    .Lx112_47
                        cmp              al, 72;                              jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_47
                                                                              jmp   .Lx112_48
.Lx112_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx112_51
.Lx112_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx112_49
                        cmp              dl, 80;                              je    .Lx112_53
                                                                              jmp   .Lx112_52
.Lx112_49:              cmp              dl, 80;                              je    .Lx112_52
                        cmp              cl, 5;                               je    .Lx112_53
                        cmp              dl, 5;                               je    .Lx112_53
                        cmp              cl, 3;                               jne   .Lx112_50
                        cmp              dl, 3;                               jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx112_51
                                                                              jmp   .Lx112_52
.Lx112_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx112_53
.Lx112_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx112_54
.Lx112_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx112_54
.Lx112_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx112_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n92_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_move_label_α
n89_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   n92_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_move_label_α:       mov              r11, 45
                        lea              rax, [rip + n92_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n91_disjunction_α:      mov              r11, 46
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    pj_test$2F4_ω
                                                                              jmp   rax
n91_disjunction_β:      mov              r11, 46;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_test$2F4_ω
n92_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n91_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 632]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 640]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r8
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx118_2]
                        lea              rdx, [rip + .Lx118_3];               jmp   FN__pj_test$2F4
.Lx118_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx118_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__lshift$2F0:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 336
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
lshift$2F0_α_body:
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rsp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 48
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx129_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx129_101
.Lx129_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx129_101
.Lx129_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx129_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    lshift$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_lit_string_α
n119_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 49
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 12
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n121_var_ref_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              r11, 51
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx134_20
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx134_21
.Lx134_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx134_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx134_22
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx134_23
.Lx134_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx134_23:              mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx134_1
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx134_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx134_3]
                        push             rcx
                        lea              rcx, [rip + .Lx134_3]
                        lea              rdx, [rip + .Lx134_4];               jmp   rax
.Lx134_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx134_2
.Lx134_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx134_2
.Lx134_1:               call             rt_faildescr@PLT
.Lx134_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx134_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx134_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                                                                              jmp   n123_var_ref_α
n122_call_proc_staged_β:
                        mov              r11, 51;                             jmp   n128_call_builtin_prolog_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n124_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_proc_staged_α:
                        mov              r11, 53
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx138_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx138_21
.Lx138_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx138_21:              lea              rax, [rip + .Lx138_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx138_1
                        lea              rcx, [rip + .Lx138_3]
                        lea              rdx, [rip + .Lx138_4];               jmp   rax
.Lx138_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx138_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx138_2
.Lx138_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx138_2
.Lx138_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx138_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx138_2
.Lx138_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx138_2
.Lx138_1:               call             rt_faildescr@PLT
.Lx138_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx138_29
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
.Lx138_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n122_call_proc_staged_β
                                                                              jmp   n125_cut_α
n124_call_proc_staged_β:
                        mov              r11, 53
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n122_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 32
                        mov              r8d, 480
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
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
                        test             rax, rax;                            je    n122_call_proc_staged_β
                        lea              r11, [rip + .Lx138_7]
                        push             r11
                        lea              rcx, [rip + .Lx138_3]
                        lea              rdx, [rip + .Lx138_4];               jmp   rax
.Lx138_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n122_call_proc_staged_β
                                                                              jmp   n125_cut_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n125_cut_α:             mov              r11, 54;                             jmp   n126_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              r11, 55
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx141_1
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx141_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx141_3]
                        push             rcx
                        lea              rcx, [rip + .Lx141_3]
                        lea              rdx, [rip + .Lx141_4];               jmp   rax
.Lx141_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx141_2
.Lx141_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx141_2
.Lx141_1:               call             rt_faildescr@PLT
.Lx141_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx141_29
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
.Lx141_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                                                                              jmp   n127_suspend_α
n126_call_proc_staged_β:
                        mov              r11, 55;                             jmp   n128_call_builtin_prolog_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:         mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx143_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Lx143_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n127_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   lshift$2F0_γ
n127_suspend_β:         mov              r11, 56;                             jmp   n126_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              r11, 57
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
                        cmp              al, 104;                             je    lshift$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   lshift$2F0_ω
n128_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F0_β:
                                                                              jmp   n127_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx144_50
                        mov              qword ptr [rsp + 288], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Lx144_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F0_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__lshift$2F1:
                        sub              rsp, 576
                        mov              qword ptr [rsp + 552], rcx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
lshift$2F1_α_body:
                        lea              rax, [rip + n154_suspend_β]
                        mov              qword ptr [rsp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              r11, 58
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx161_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx161_101
.Lx161_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx161_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx161_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx161_101
.Lx161_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx161_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    lshift$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_var_ref_α
n145_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx166_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx166_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx166_41
                        cmp              esi, 1;                              jne   .Lx166_55
                        mov              r8, rax;                             jmp   .Lx166_40
.Lx166_55:              cmp              esi, 2;                              jne   .Lx166_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx166_41
                        mov              r8, rax;                             jmp   .Lx166_40
.Lx166_56:              cmp              al, 72;                              jne   .Lx166_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx166_41
                        cmp              rax, r8;                             je    .Lx166_41
                        mov              r8, rax;                             jmp   .Lx166_40
.Lx166_41:              lea              r9, [rsp + 432]
.Lx166_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx166_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx166_43
                        cmp              esi, 1;                              jne   .Lx166_57
                        mov              r9, rax;                             jmp   .Lx166_42
.Lx166_57:              cmp              esi, 2;                              jne   .Lx166_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx166_43
                        mov              r9, rax;                             jmp   .Lx166_42
.Lx166_58:              cmp              al, 72;                              jne   .Lx166_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx166_43
                        cmp              rax, r9;                             je    .Lx166_43
                        mov              r9, rax;                             jmp   .Lx166_42
.Lx166_43:              cmp              r8, r9;                              je    .Lx166_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx166_44
                        cmp              al, 104;                             je    .Lx166_44
                        cmp              al, 72;                              jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx166_44
                                                                              jmp   .Lx166_45
.Lx166_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx166_53
                        cmp              al, 104;                             je    .Lx166_53
                        cmp              al, 72;                              jne   .Lx166_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx166_53
                                                                              jmp   .Lx166_46
.Lx166_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx166_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx166_51
.Lx166_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx166_47
                        cmp              al, 104;                             je    .Lx166_47
                        cmp              al, 72;                              jne   .Lx166_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx166_47
                                                                              jmp   .Lx166_48
.Lx166_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx166_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx166_51
.Lx166_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx166_49
                        cmp              dl, 80;                              je    .Lx166_53
                                                                              jmp   .Lx166_52
.Lx166_49:              cmp              dl, 80;                              je    .Lx166_52
                        cmp              cl, 5;                               je    .Lx166_53
                        cmp              dl, 5;                               je    .Lx166_53
                        cmp              cl, 3;                               jne   .Lx166_50
                        cmp              dl, 3;                               jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx166_51
                                                                              jmp   .Lx166_52
.Lx166_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx166_53
.Lx166_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx166_54
.Lx166_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx166_54
.Lx166_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx166_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n155_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_lit_string_α
n148_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n155_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 12
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n150_var_ref_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 64
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx171_20
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx171_21
.Lx171_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx171_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx171_22
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx171_23
.Lx171_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx171_23:              mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx171_1
                        mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx171_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx171_3]
                        push             rcx
                        lea              rcx, [rip + .Lx171_3]
                        lea              rdx, [rip + .Lx171_4];               jmp   rax
.Lx171_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx171_2
.Lx171_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx171_2
.Lx171_1:               call             rt_faildescr@PLT
.Lx171_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx171_29
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
.Lx171_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n155_call_builtin_prolog_α
                                                                              jmp   n152_var_ref_α
n151_call_proc_staged_β:
                        mov              r11, 64;                             jmp   n155_call_builtin_prolog_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n153_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        mov              r11, 66
                        mov              qword ptr [rsp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx175_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx175_21
.Lx175_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx175_21:              lea              rax, [rip + .Lx175_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx175_1
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4];               jmp   rax
.Lx175_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx175_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx175_2
.Lx175_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx175_2
.Lx175_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx175_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx175_2
.Lx175_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx175_2
.Lx175_1:               call             rt_faildescr@PLT
.Lx175_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx175_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx175_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n154_suspend_α
n153_call_proc_staged_β:
                        mov              r11, 66
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n151_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 32
                        mov              r8d, 480
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
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
                        test             rax, rax;                            je    n151_call_proc_staged_β
                        lea              r11, [rip + .Lx175_7]
                        push             r11
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4];               jmp   rax
.Lx175_7:               add              rsp, 8
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n154_suspend_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n154_suspend_α:         mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx177_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx177_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n154_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n154_suspend_β]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   lshift$2F1_γ
n154_suspend_β:         mov              r11, 67;                             jmp   n153_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    lshift$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n158_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        lea              r8, [rsp + 128]
.Lx183_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx183_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx183_41
                        cmp              esi, 1;                              jne   .Lx183_55
                        mov              r8, rax;                             jmp   .Lx183_40
.Lx183_55:              cmp              esi, 2;                              jne   .Lx183_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx183_41
                        mov              r8, rax;                             jmp   .Lx183_40
.Lx183_56:              cmp              al, 72;                              jne   .Lx183_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx183_41
                        cmp              rax, r8;                             je    .Lx183_41
                        mov              r8, rax;                             jmp   .Lx183_40
.Lx183_41:              lea              r9, [rsp + 144]
.Lx183_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx183_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx183_43
                        cmp              esi, 1;                              jne   .Lx183_57
                        mov              r9, rax;                             jmp   .Lx183_42
.Lx183_57:              cmp              esi, 2;                              jne   .Lx183_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx183_43
                        mov              r9, rax;                             jmp   .Lx183_42
.Lx183_58:              cmp              al, 72;                              jne   .Lx183_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx183_43
                        cmp              rax, r9;                             je    .Lx183_43
                        mov              r9, rax;                             jmp   .Lx183_42
.Lx183_43:              cmp              r8, r9;                              je    .Lx183_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx183_44
                        cmp              al, 104;                             je    .Lx183_44
                        cmp              al, 72;                              jne   .Lx183_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx183_44
                                                                              jmp   .Lx183_45
.Lx183_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx183_53
                        cmp              al, 104;                             je    .Lx183_53
                        cmp              al, 72;                              jne   .Lx183_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx183_53
                                                                              jmp   .Lx183_46
.Lx183_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx183_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx183_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx183_51
.Lx183_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx183_47
                        cmp              al, 104;                             je    .Lx183_47
                        cmp              al, 72;                              jne   .Lx183_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx183_47
                                                                              jmp   .Lx183_48
.Lx183_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx183_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx183_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx183_51
.Lx183_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx183_49
                        cmp              dl, 80;                              je    .Lx183_53
                                                                              jmp   .Lx183_52
.Lx183_49:              cmp              dl, 80;                              je    .Lx183_52
                        cmp              cl, 5;                               je    .Lx183_53
                        cmp              dl, 5;                               je    .Lx183_53
                        cmp              cl, 3;                               jne   .Lx183_50
                        cmp              dl, 3;                               jne   .Lx183_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx183_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx183_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx183_51
                                                                              jmp   .Lx183_52
.Lx183_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx183_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx183_53
.Lx183_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx183_54
.Lx183_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx183_54
.Lx183_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx183_54:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n160_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_suspend_α
n158_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:         mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx185_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx185_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n159_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n159_suspend_β]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   lshift$2F1_γ
n159_suspend_β:         mov              r11, 72;                             jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              r11, 73
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
                        cmp              al, 104;                             je    lshift$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   lshift$2F1_ω
n160_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F1_β:
                                                                              jmp   n154_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx186_50
                        mov              qword ptr [rsp + 480], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx186_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 552]
                        add              rsp, 576;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
lshift$2F1_ω:
                        mov              rcx, qword ptr [rsp + 560]
                        add              rsp, 576;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__make_or$2F2:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1040
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
make_or$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              r11, 74
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx221_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx221_101
.Lx221_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx221_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx221_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx221_101
.Lx221_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx221_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    make_or$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_var_ref_α
n187_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n190_lit_integer_α
.Lx224_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n191_call_builtin_prolog_α
.Lx225_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        lea              r8, [rsp + 880]
.Lx226_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx226_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx226_111
                        cmp              esi, 1;                              jne   .Lx226_112
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_112:             cmp              esi, 2;                              jne   .Lx226_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx226_111
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_113:             cmp              al, 72;                              jne   .Lx226_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx226_111
                        cmp              rax, r8;                             je    .Lx226_111
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx226_114
                        cmp              al, 104;                             je    .Lx226_114
                        cmp              al, 72;                              jne   .Lx226_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx226_114
                                                                              jmp   .Lx226_118
.Lx226_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx226_115
                        cmp              al, 3;                               jne   .Lx226_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx226_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx226_115
                                                                              jmp   .Lx226_114
.Lx226_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx226_117
.Lx226_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx226_117
.Lx226_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx226_117:             mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n201_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_var_ref_α
n191_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n193_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     mov              r11, 80
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n194_call_builtin_prolog_α
.Lx229_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n200_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_var_ref_α
n194_call_builtin_prolog_β:
                        mov              r11, 81;                             jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n197_call_builtin_prolog_α
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              rsi, qword ptr [rip + .Lx234_2];     jmp   .Lx234_3
.Lx234_2:               .quad            .Lx234_2_s
.Lx234_2_s:             .string          "a"
.Lx234_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n200_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_cut_α
n197_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_cut_α:             mov              r11, 85;                             jmp   n199_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n199_move_label_α:      mov              r11, 86
                        lea              rax, [rip + n200_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   make_or$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    make_or$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n201_var_ref_α
n200_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lx243_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx243_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx243_41
                        cmp              esi, 1;                              jne   .Lx243_55
                        mov              r8, rax;                             jmp   .Lx243_40
.Lx243_55:              cmp              esi, 2;                              jne   .Lx243_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx243_41
                        mov              r8, rax;                             jmp   .Lx243_40
.Lx243_56:              cmp              al, 72;                              jne   .Lx243_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx243_41
                        cmp              rax, r8;                             je    .Lx243_41
                        mov              r8, rax;                             jmp   .Lx243_40
.Lx243_41:              lea              r9, [rsp + 624]
.Lx243_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx243_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx243_43
                        cmp              esi, 1;                              jne   .Lx243_57
                        mov              r9, rax;                             jmp   .Lx243_42
.Lx243_57:              cmp              esi, 2;                              jne   .Lx243_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx243_43
                        mov              r9, rax;                             jmp   .Lx243_42
.Lx243_58:              cmp              al, 72;                              jne   .Lx243_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx243_43
                        cmp              rax, r9;                             je    .Lx243_43
                        mov              r9, rax;                             jmp   .Lx243_42
.Lx243_43:              cmp              r8, r9;                              je    .Lx243_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx243_44
                        cmp              al, 104;                             je    .Lx243_44
                        cmp              al, 72;                              jne   .Lx243_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx243_44
                                                                              jmp   .Lx243_45
.Lx243_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx243_53
                        cmp              al, 104;                             je    .Lx243_53
                        cmp              al, 72;                              jne   .Lx243_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx243_53
                                                                              jmp   .Lx243_46
.Lx243_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx243_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx243_51
.Lx243_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx243_47
                        cmp              al, 104;                             je    .Lx243_47
                        cmp              al, 72;                              jne   .Lx243_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx243_47
                                                                              jmp   .Lx243_48
.Lx243_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx243_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx243_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx243_51
.Lx243_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx243_49
                        cmp              dl, 80;                              je    .Lx243_53
                                                                              jmp   .Lx243_52
.Lx243_49:              cmp              dl, 80;                              je    .Lx243_52
                        cmp              cl, 5;                               je    .Lx243_53
                        cmp              dl, 5;                               je    .Lx243_53
                        cmp              cl, 3;                               jne   .Lx243_50
                        cmp              dl, 3;                               jne   .Lx243_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx243_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx243_51
                                                                              jmp   .Lx243_52
.Lx243_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx243_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx243_53
.Lx243_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx243_54
.Lx243_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx243_54
.Lx243_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx243_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n206_var_ref_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n208_call_builtin_prolog_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_call_builtin_prolog_α
n208_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              r11, 96
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx251_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              esi, 1;                              jne   .Lx251_55
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_55:              cmp              esi, 2;                              jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_56:              cmp              al, 72;                              jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              rax, r8;                             je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_41:              lea              r9, [rsp + 432]
.Lx251_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              esi, 1;                              jne   .Lx251_57
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_57:              cmp              esi, 2;                              jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_58:              cmp              al, 72;                              jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              rax, r9;                             je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_43:              cmp              r8, r9;                              je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx251_44
                        cmp              al, 104;                             je    .Lx251_44
                        cmp              al, 72;                              jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx251_44
                                                                              jmp   .Lx251_45
.Lx251_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx251_53
                        cmp              al, 104;                             je    .Lx251_53
                        cmp              al, 72;                              jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_53
                                                                              jmp   .Lx251_46
.Lx251_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx251_51
.Lx251_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx251_47
                        cmp              al, 104;                             je    .Lx251_47
                        cmp              al, 72;                              jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_47
                                                                              jmp   .Lx251_48
.Lx251_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx251_51
.Lx251_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx251_49
                        cmp              dl, 80;                              je    .Lx251_53
                                                                              jmp   .Lx251_52
.Lx251_49:              cmp              dl, 80;                              je    .Lx251_52
                        cmp              cl, 5;                               je    .Lx251_53
                        cmp              dl, 5;                               je    .Lx251_53
                        cmp              cl, 3;                               jne   .Lx251_50
                        cmp              dl, 3;                               jne   .Lx251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx251_51
                                                                              jmp   .Lx251_52
.Lx251_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx251_53
.Lx251_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx251_54
.Lx251_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx251_54
.Lx251_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx251_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                        mov              r11, 96;                             jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n211_var_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 376], rax;          jmp   n212_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n213_call_builtin_prolog_α
.Lx256_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n214_call_builtin_prolog_α
n213_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_var_ref_α
n214_call_builtin_prolog_β:
                        mov              r11, 101;                            jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 992]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n217_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        mov              r11, 104
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 224]
                        call             make_or$2F2_dcα;                     jmp   .Lx264_2
.Lx264_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx264_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx264_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                                                                              jmp   n218_move_label_α
n217_call_proc_staged_β:
                        mov              r11, 104;                            jmp   n220_call_builtin_prolog_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "make_or/2"
#-----------------------------------------------------------------------------------------------------------------------
n218_move_label_α:      mov              r11, 105
                        lea              rax, [rip + n217_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   make_or$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n219_disjunction_α:     mov              r11, 106
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    make_or$2F2_ω
                                                                              jmp   rax
n219_disjunction_β:     mov              r11, 106;                            jmp   make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              r11, 107
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
                        cmp              al, 104;                             je    make_or$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   make_or$2F2_ω
n220_call_builtin_prolog_β:
                        mov              r11, 107;                            jmp   make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
make_or$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
make_or$2F2_β:
                                                                              jmp   n219_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
make_or$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1048]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
make_or$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1056]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
make_or$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx270_2]
                        lea              rdx, [rip + .Lx270_3];               jmp   FN__make_or$2F2
.Lx270_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx270_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__test2_1$2F0:
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
test2_1$2F0_α_body:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              r11, 108
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx275_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx275_101
.Lx275_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx275_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx275_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx275_101
.Lx275_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx275_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test2_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n272_call_proc_staged_α
n271_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   test2_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_call_proc_staged_α:
                        mov              r11, 109
                        mov              qword ptr [rsp + 96], 0
                        lea              rax, [rip + .Lx277_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4];               jmp   rax
.Lx277_3:               mov              qword ptr [rsp + 104], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx277_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx277_2
.Lx277_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx277_2
.Lx277_4:               mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx277_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx277_2
.Lx277_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx277_2
.Lx277_1:               call             rt_faildescr@PLT
.Lx277_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx277_29
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
.Lx277_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n274_call_builtin_prolog_α
                                                                              jmp   n273_suspend_α
n272_call_proc_staged_β:
                        mov              r11, 109
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 96], 0
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n274_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              ecx, 16
                        mov              r8d, 240
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n274_call_builtin_prolog_α
                        lea              r11, [rip + .Lx277_7]
                        push             r11
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4];               jmp   rax
.Lx277_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n274_call_builtin_prolog_α
                                                                              jmp   n273_suspend_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "test2_2/0"
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:         mov              r11, 110
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx279_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx279_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n273_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test2_1$2F0_γ
n273_suspend_β:         mov              r11, 110;                            jmp   n272_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
                        mov              r11, 111
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
                        cmp              al, 104;                             je    test2_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test2_1$2F0_ω
n274_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   test2_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test2_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test2_1$2F0_β:
                                                                              jmp   n273_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test2_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx280_50
                        mov              qword ptr [rsp + 128], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx280_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test2_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__or_dept$2F1:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 240
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
or_dept$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
                        mov              r11, 112
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx288_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx288_101
.Lx288_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx288_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx288_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx288_101
.Lx288_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx288_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    or_dept$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_var_ref_α
n281_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n283_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n284_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx293_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx293_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx293_41
                        cmp              esi, 1;                              jne   .Lx293_55
                        mov              r8, rax;                             jmp   .Lx293_40
.Lx293_55:              cmp              esi, 2;                              jne   .Lx293_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx293_41
                        mov              r8, rax;                             jmp   .Lx293_40
.Lx293_56:              cmp              al, 72;                              jne   .Lx293_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx293_41
                        cmp              rax, r8;                             je    .Lx293_41
                        mov              r8, rax;                             jmp   .Lx293_40
.Lx293_41:              lea              r9, [rsp + 160]
.Lx293_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx293_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx293_43
                        cmp              esi, 1;                              jne   .Lx293_57
                        mov              r9, rax;                             jmp   .Lx293_42
.Lx293_57:              cmp              esi, 2;                              jne   .Lx293_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx293_43
                        mov              r9, rax;                             jmp   .Lx293_42
.Lx293_58:              cmp              al, 72;                              jne   .Lx293_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx293_43
                        cmp              rax, r9;                             je    .Lx293_43
                        mov              r9, rax;                             jmp   .Lx293_42
.Lx293_43:              cmp              r8, r9;                              je    .Lx293_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx293_44
                        cmp              al, 104;                             je    .Lx293_44
                        cmp              al, 72;                              jne   .Lx293_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx293_44
                                                                              jmp   .Lx293_45
.Lx293_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx293_53
                        cmp              al, 104;                             je    .Lx293_53
                        cmp              al, 72;                              jne   .Lx293_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx293_53
                                                                              jmp   .Lx293_46
.Lx293_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx293_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx293_51
.Lx293_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx293_47
                        cmp              al, 104;                             je    .Lx293_47
                        cmp              al, 72;                              jne   .Lx293_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx293_47
                                                                              jmp   .Lx293_48
.Lx293_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx293_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx293_51
.Lx293_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx293_49
                        cmp              dl, 80;                              je    .Lx293_53
                                                                              jmp   .Lx293_52
.Lx293_49:              cmp              dl, 80;                              je    .Lx293_52
                        cmp              cl, 5;                               je    .Lx293_53
                        cmp              dl, 5;                               je    .Lx293_53
                        cmp              cl, 3;                               jne   .Lx293_50
                        cmp              dl, 3;                               jne   .Lx293_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx293_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx293_51
                                                                              jmp   .Lx293_52
.Lx293_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx293_53
.Lx293_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx293_54
.Lx293_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx293_54
.Lx293_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx293_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n287_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_move_label_α
n284_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n287_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_move_label_α:      mov              r11, 116
                        lea              rax, [rip + n287_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   or_dept$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n286_disjunction_α:     mov              r11, 117
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    or_dept$2F1_ω
                                                                              jmp   rax
n286_disjunction_β:     mov              r11, 117;                            jmp   or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_prolog_α:
                        mov              r11, 118
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    or_dept$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   or_dept$2F1_ω
n287_call_builtin_prolog_β:
                        mov              r11, 118;                            jmp   or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
or_dept$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
or_dept$2F1_β:
                                                                              jmp   n286_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
or_dept$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 248]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
or_dept$2F1_ω:
                        mov              rcx, qword ptr [rsp + 256]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
or_dept$2F1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx299_2]
                        lea              rdx, [rip + .Lx299_3];               jmp   FN__or_dept$2F1
.Lx299_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx299_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__$2C$2F2:
                        sub              rsp, 2432
                        mov              qword ptr [rsp + 2408], rcx
                        mov              qword ptr [rsp + 2416], rdx
                        mov              qword ptr [rsp + 2424], rsp
                        mov              rdi, rsp
                        mov              esi, 2352
                        mov              edx, 2400
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$2C$2F2_α_body:
                        lea              rax, [rip + n316_suspend_β]
                        mov              qword ptr [rsp + 2352], rax
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              r11, 119
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx375_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx375_101
.Lx375_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx375_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx375_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx375_101
.Lx375_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx375_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n302_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n303_lit_string_α
.Lx378_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 7
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n304_call_builtin_prolog_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n318_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_var_ref_α
n304_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n306_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 7
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n307_var_ref_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n317_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n309_call_builtin_prolog_α
n308_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_prolog_α:
                        mov              r11, 128
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        lea              r8, [rsp + 2096]
.Lx387_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              esi, 1;                              jne   .Lx387_55
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_55:              cmp              esi, 2;                              jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_56:              cmp              al, 72;                              jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              rax, r8;                             je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_41:              lea              r9, [rsp + 2112]
.Lx387_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              esi, 1;                              jne   .Lx387_57
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_57:              cmp              esi, 2;                              jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_58:              cmp              al, 72;                              jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              rax, r9;                             je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_43:              cmp              r8, r9;                              je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx387_44
                        cmp              al, 104;                             je    .Lx387_44
                        cmp              al, 72;                              jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx387_44
                                                                              jmp   .Lx387_45
.Lx387_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_53
                        cmp              al, 104;                             je    .Lx387_53
                        cmp              al, 72;                              jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_53
                                                                              jmp   .Lx387_46
.Lx387_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx387_51
.Lx387_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_47
                        cmp              al, 104;                             je    .Lx387_47
                        cmp              al, 72;                              jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_47
                                                                              jmp   .Lx387_48
.Lx387_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx387_51
.Lx387_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx387_49
                        cmp              dl, 80;                              je    .Lx387_53
                                                                              jmp   .Lx387_52
.Lx387_49:              cmp              dl, 80;                              je    .Lx387_52
                        cmp              cl, 5;                               je    .Lx387_53
                        cmp              dl, 5;                               je    .Lx387_53
                        cmp              cl, 3;                               jne   .Lx387_50
                        cmp              dl, 3;                               jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx387_51
                                                                              jmp   .Lx387_52
.Lx387_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx387_53
.Lx387_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx387_54
.Lx387_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx387_54
.Lx387_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx387_54:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n317_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n310_var_ref_α
n309_call_builtin_prolog_β:
                        mov              r11, 128;                            jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n311_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 19
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n312_lit_string_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 4
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n313_lit_string_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "asan"
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 4
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n314_call_builtin_prolog_α
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n317_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n315_call_builtin_prolog_α
n314_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        lea              r8, [rsp + 1904]
.Lx394_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx394_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx394_41
                        cmp              esi, 1;                              jne   .Lx394_55
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_55:              cmp              esi, 2;                              jne   .Lx394_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx394_41
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_56:              cmp              al, 72;                              jne   .Lx394_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx394_41
                        cmp              rax, r8;                             je    .Lx394_41
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_41:              lea              r9, [rsp + 1920]
.Lx394_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx394_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx394_43
                        cmp              esi, 1;                              jne   .Lx394_57
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_57:              cmp              esi, 2;                              jne   .Lx394_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx394_43
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_58:              cmp              al, 72;                              jne   .Lx394_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx394_43
                        cmp              rax, r9;                             je    .Lx394_43
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_43:              cmp              r8, r9;                              je    .Lx394_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx394_44
                        cmp              al, 104;                             je    .Lx394_44
                        cmp              al, 72;                              jne   .Lx394_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx394_44
                                                                              jmp   .Lx394_45
.Lx394_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx394_53
                        cmp              al, 104;                             je    .Lx394_53
                        cmp              al, 72;                              jne   .Lx394_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx394_53
                                                                              jmp   .Lx394_46
.Lx394_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx394_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx394_51
.Lx394_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx394_47
                        cmp              al, 104;                             je    .Lx394_47
                        cmp              al, 72;                              jne   .Lx394_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx394_47
                                                                              jmp   .Lx394_48
.Lx394_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx394_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx394_51
.Lx394_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx394_49
                        cmp              dl, 80;                              je    .Lx394_53
                                                                              jmp   .Lx394_52
.Lx394_49:              cmp              dl, 80;                              je    .Lx394_52
                        cmp              cl, 5;                               je    .Lx394_53
                        cmp              dl, 5;                               je    .Lx394_53
                        cmp              cl, 3;                               jne   .Lx394_50
                        cmp              dl, 3;                               jne   .Lx394_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx394_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx394_51
                                                                              jmp   .Lx394_52
.Lx394_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx394_53
.Lx394_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx394_54
.Lx394_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx394_54
.Lx394_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx394_54:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n317_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n316_suspend_α
n315_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_suspend_α:         mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx396_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2352];         jmp   rax
.Lx396_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n316_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n316_suspend_β]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n316_suspend_β:         mov              r11, 135;                            jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
                        mov              r11, 136
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1864], rax
                        lea              rdi, [rsp + 1856]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n318_var_ref_α
n317_call_builtin_prolog_β:
                        mov              r11, 136;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n320_lit_string_α
.Lx400_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 7
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n321_call_builtin_prolog_α
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n335_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n322_var_ref_α
n321_call_builtin_prolog_β:
                        mov              r11, 140;                            jmp   n335_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 7
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n324_var_ref_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n325_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              r11, 144
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n334_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                        mov              r11, 144;                            jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        lea              r8, [rsp + 1584]
.Lx409_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx409_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              esi, 1;                              jne   .Lx409_55
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_55:              cmp              esi, 2;                              jne   .Lx409_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_56:              cmp              al, 72;                              jne   .Lx409_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              rax, r8;                             je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_41:              lea              r9, [rsp + 1600]
.Lx409_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx409_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              esi, 1;                              jne   .Lx409_57
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_57:              cmp              esi, 2;                              jne   .Lx409_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_58:              cmp              al, 72;                              jne   .Lx409_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              rax, r9;                             je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_43:              cmp              r8, r9;                              je    .Lx409_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx409_44
                        cmp              al, 104;                             je    .Lx409_44
                        cmp              al, 72;                              jne   .Lx409_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx409_44
                                                                              jmp   .Lx409_45
.Lx409_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_53
                        cmp              al, 104;                             je    .Lx409_53
                        cmp              al, 72;                              jne   .Lx409_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_53
                                                                              jmp   .Lx409_46
.Lx409_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx409_51
.Lx409_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_47
                        cmp              al, 104;                             je    .Lx409_47
                        cmp              al, 72;                              jne   .Lx409_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_47
                                                                              jmp   .Lx409_48
.Lx409_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx409_51
.Lx409_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx409_49
                        cmp              dl, 80;                              je    .Lx409_53
                                                                              jmp   .Lx409_52
.Lx409_49:              cmp              dl, 80;                              je    .Lx409_52
                        cmp              cl, 5;                               je    .Lx409_53
                        cmp              dl, 5;                               je    .Lx409_53
                        cmp              cl, 3;                               jne   .Lx409_50
                        cmp              dl, 3;                               jne   .Lx409_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx409_51
                                                                              jmp   .Lx409_52
.Lx409_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx409_53
.Lx409_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx409_54
.Lx409_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx409_54
.Lx409_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx409_54:              mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n334_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_var_ref_α
n326_call_builtin_prolog_β:
                        mov              r11, 145;                            jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 19
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n329_lit_string_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 10
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n330_lit_string_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "emscripten"
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 4
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n331_call_builtin_prolog_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n334_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n332_call_builtin_prolog_α
n331_call_builtin_prolog_β:
                        mov              r11, 150;                            jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
                        mov              r11, 151
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        lea              r8, [rsp + 1392]
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
.Lx416_41:              lea              r9, [rsp + 1408]
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
.Lx416_54:              mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n334_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n333_suspend_α
n332_call_builtin_prolog_β:
                        mov              r11, 151;                            jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_suspend_α:         mov              r11, 152
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx418_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2352];         jmp   rax
.Lx418_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n333_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n333_suspend_β]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n333_suspend_β:         mov              r11, 152;                            jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n335_var_ref_α
n334_call_builtin_prolog_β:
                        mov              r11, 153;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n337_lit_string_α
.Lx422_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 7
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n338_call_builtin_prolog_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
                        mov              r11, 157
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n358_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n339_var_ref_α
n338_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   n358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n340_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 7
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n341_var_ref_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n342_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_prolog_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n357_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n343_call_builtin_prolog_α
n342_call_builtin_prolog_β:
                        mov              r11, 161;                            jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              r11, 162
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.Lx431_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx431_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx431_41
                        cmp              esi, 1;                              jne   .Lx431_55
                        mov              r8, rax;                             jmp   .Lx431_40
.Lx431_55:              cmp              esi, 2;                              jne   .Lx431_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx431_41
                        mov              r8, rax;                             jmp   .Lx431_40
.Lx431_56:              cmp              al, 72;                              jne   .Lx431_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx431_41
                        cmp              rax, r8;                             je    .Lx431_41
                        mov              r8, rax;                             jmp   .Lx431_40
.Lx431_41:              lea              r9, [rsp + 1088]
.Lx431_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx431_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx431_43
                        cmp              esi, 1;                              jne   .Lx431_57
                        mov              r9, rax;                             jmp   .Lx431_42
.Lx431_57:              cmp              esi, 2;                              jne   .Lx431_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx431_43
                        mov              r9, rax;                             jmp   .Lx431_42
.Lx431_58:              cmp              al, 72;                              jne   .Lx431_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx431_43
                        cmp              rax, r9;                             je    .Lx431_43
                        mov              r9, rax;                             jmp   .Lx431_42
.Lx431_43:              cmp              r8, r9;                              je    .Lx431_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx431_44
                        cmp              al, 104;                             je    .Lx431_44
                        cmp              al, 72;                              jne   .Lx431_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx431_44
                                                                              jmp   .Lx431_45
.Lx431_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx431_53
                        cmp              al, 104;                             je    .Lx431_53
                        cmp              al, 72;                              jne   .Lx431_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx431_53
                                                                              jmp   .Lx431_46
.Lx431_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx431_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx431_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx431_51
.Lx431_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx431_47
                        cmp              al, 104;                             je    .Lx431_47
                        cmp              al, 72;                              jne   .Lx431_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx431_47
                                                                              jmp   .Lx431_48
.Lx431_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx431_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx431_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx431_51
.Lx431_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx431_49
                        cmp              dl, 80;                              je    .Lx431_53
                                                                              jmp   .Lx431_52
.Lx431_49:              cmp              dl, 80;                              je    .Lx431_52
                        cmp              cl, 5;                               je    .Lx431_53
                        cmp              dl, 5;                               je    .Lx431_53
                        cmp              cl, 3;                               jne   .Lx431_50
                        cmp              dl, 3;                               jne   .Lx431_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx431_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx431_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx431_51
                                                                              jmp   .Lx431_52
.Lx431_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx431_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx431_53
.Lx431_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx431_54
.Lx431_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx431_54
.Lx431_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx431_54:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n357_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                        mov              r11, 162;                            jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n346_lit_string_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 19
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n347_lit_string_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 7
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n348_lit_string_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "windows"
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 4
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n349_call_builtin_prolog_α
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n350_lit_string_α
n349_call_builtin_prolog_β:
                        mov              r11, 168;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 19
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n351_lit_string_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 10
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n352_lit_string_α
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "build_type"
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 5
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n353_call_builtin_prolog_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "Debug"
#-----------------------------------------------------------------------------------------------------------------------
n353_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 840]
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
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n354_call_builtin_prolog_α
n353_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 744]
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
                        cmp              al, 104;                             je    n357_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_call_builtin_prolog_α
n354_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_prolog_α:
                        mov              r11, 174
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lx444_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx444_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx444_41
                        cmp              esi, 1;                              jne   .Lx444_55
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_55:              cmp              esi, 2;                              jne   .Lx444_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx444_41
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_56:              cmp              al, 72;                              jne   .Lx444_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx444_41
                        cmp              rax, r8;                             je    .Lx444_41
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_41:              lea              r9, [rsp + 672]
.Lx444_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx444_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx444_43
                        cmp              esi, 1;                              jne   .Lx444_57
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_57:              cmp              esi, 2;                              jne   .Lx444_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx444_43
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_58:              cmp              al, 72;                              jne   .Lx444_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx444_43
                        cmp              rax, r9;                             je    .Lx444_43
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_43:              cmp              r8, r9;                              je    .Lx444_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx444_44
                        cmp              al, 104;                             je    .Lx444_44
                        cmp              al, 72;                              jne   .Lx444_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx444_44
                                                                              jmp   .Lx444_45
.Lx444_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx444_53
                        cmp              al, 104;                             je    .Lx444_53
                        cmp              al, 72;                              jne   .Lx444_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx444_53
                                                                              jmp   .Lx444_46
.Lx444_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx444_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx444_51
.Lx444_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx444_47
                        cmp              al, 104;                             je    .Lx444_47
                        cmp              al, 72;                              jne   .Lx444_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx444_47
                                                                              jmp   .Lx444_48
.Lx444_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx444_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx444_51
.Lx444_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx444_49
                        cmp              dl, 80;                              je    .Lx444_53
                                                                              jmp   .Lx444_52
.Lx444_49:              cmp              dl, 80;                              je    .Lx444_52
                        cmp              cl, 5;                               je    .Lx444_53
                        cmp              dl, 5;                               je    .Lx444_53
                        cmp              cl, 3;                               jne   .Lx444_50
                        cmp              dl, 3;                               jne   .Lx444_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx444_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx444_51
                                                                              jmp   .Lx444_52
.Lx444_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx444_53
.Lx444_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx444_54
.Lx444_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx444_54
.Lx444_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx444_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n357_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n356_suspend_α
n355_call_builtin_prolog_β:
                        mov              r11, 174;                            jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n356_suspend_α:         mov              r11, 175
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx446_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2352];         jmp   rax
.Lx446_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n356_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n356_suspend_β]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n356_suspend_β:         mov              r11, 175;                            jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              r11, 176
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
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n358_var_ref_α
n357_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n359_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:     mov              r11, 178
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n360_lit_string_α
.Lx450_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 7
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n361_call_builtin_prolog_α
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n361_call_builtin_prolog_α:
                        mov              r11, 180
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
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n362_var_ref_α
n361_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n364_var_ref_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n365_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        mov              r11, 184
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
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_call_builtin_prolog_α
n365_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_prolog_α:
                        mov              r11, 185
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
.Lx459_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx459_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx459_41
                        cmp              esi, 1;                              jne   .Lx459_55
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_55:              cmp              esi, 2;                              jne   .Lx459_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx459_41
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_56:              cmp              al, 72;                              jne   .Lx459_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx459_41
                        cmp              rax, r8;                             je    .Lx459_41
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_41:              lea              r9, [rsp + 352]
.Lx459_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx459_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx459_43
                        cmp              esi, 1;                              jne   .Lx459_57
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_57:              cmp              esi, 2;                              jne   .Lx459_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx459_43
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_58:              cmp              al, 72;                              jne   .Lx459_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx459_43
                        cmp              rax, r9;                             je    .Lx459_43
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_43:              cmp              r8, r9;                              je    .Lx459_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx459_44
                        cmp              al, 104;                             je    .Lx459_44
                        cmp              al, 72;                              jne   .Lx459_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx459_44
                                                                              jmp   .Lx459_45
.Lx459_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx459_53
                        cmp              al, 104;                             je    .Lx459_53
                        cmp              al, 72;                              jne   .Lx459_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx459_53
                                                                              jmp   .Lx459_46
.Lx459_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx459_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx459_51
.Lx459_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx459_47
                        cmp              al, 104;                             je    .Lx459_47
                        cmp              al, 72;                              jne   .Lx459_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx459_47
                                                                              jmp   .Lx459_48
.Lx459_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx459_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx459_51
.Lx459_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx459_49
                        cmp              dl, 80;                              je    .Lx459_53
                                                                              jmp   .Lx459_52
.Lx459_49:              cmp              dl, 80;                              je    .Lx459_52
                        cmp              cl, 5;                               je    .Lx459_53
                        cmp              dl, 5;                               je    .Lx459_53
                        cmp              cl, 3;                               jne   .Lx459_50
                        cmp              dl, 3;                               jne   .Lx459_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx459_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx459_51
                                                                              jmp   .Lx459_52
.Lx459_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx459_53
.Lx459_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx459_54
.Lx459_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx459_54
.Lx459_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx459_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n367_var_ref_α
n366_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 19
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n369_lit_string_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 7
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n370_lit_string_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "windows"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n371_call_builtin_prolog_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              r11, 190
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
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n372_call_builtin_prolog_α
n371_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_prolog_α:
                        mov              r11, 191
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
.Lx466_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx466_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              esi, 1;                              jne   .Lx466_55
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_55:              cmp              esi, 2;                              jne   .Lx466_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_56:              cmp              al, 72;                              jne   .Lx466_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              rax, r8;                             je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_41:              lea              r9, [rsp + 160]
.Lx466_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx466_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              esi, 1;                              jne   .Lx466_57
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_57:              cmp              esi, 2;                              jne   .Lx466_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_58:              cmp              al, 72;                              jne   .Lx466_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              rax, r9;                             je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_43:              cmp              r8, r9;                              je    .Lx466_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx466_44
                        cmp              al, 104;                             je    .Lx466_44
                        cmp              al, 72;                              jne   .Lx466_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx466_44
                                                                              jmp   .Lx466_45
.Lx466_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_53
                        cmp              al, 104;                             je    .Lx466_53
                        cmp              al, 72;                              jne   .Lx466_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_53
                                                                              jmp   .Lx466_46
.Lx466_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx466_51
.Lx466_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_47
                        cmp              al, 104;                             je    .Lx466_47
                        cmp              al, 72;                              jne   .Lx466_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_47
                                                                              jmp   .Lx466_48
.Lx466_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx466_51
.Lx466_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx466_49
                        cmp              dl, 80;                              je    .Lx466_53
                                                                              jmp   .Lx466_52
.Lx466_49:              cmp              dl, 80;                              je    .Lx466_52
                        cmp              cl, 5;                               je    .Lx466_53
                        cmp              dl, 5;                               je    .Lx466_53
                        cmp              cl, 3;                               jne   .Lx466_50
                        cmp              dl, 3;                               jne   .Lx466_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx466_51
                                                                              jmp   .Lx466_52
.Lx466_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx466_53
.Lx466_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx466_54
.Lx466_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx466_54
.Lx466_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx466_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n373_suspend_α
n372_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n373_suspend_α:         mov              r11, 192
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx468_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2352];         jmp   rax
.Lx468_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n373_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n373_suspend_β]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n373_suspend_β:         mov              r11, 192;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              r11, 193
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
                        cmp              al, 104;                             je    $2C$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $2C$2F2_ω
n374_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_β:
                                                                              jmp   n316_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx469_50
                        mov              qword ptr [rsp + 2352], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2352];         jmp   rax
.Lx469_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2408]
                        add              rsp, 2432;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_ω:
                        mov              rcx, qword ptr [rsp + 2416]
                        add              rsp, 2432;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cp$2F0:
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
cp$2F0_α_body:
                        lea              rax, [rip + n471_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
                        mov              r11, 194
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx475_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx475_101
.Lx475_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx475_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx475_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx475_101
.Lx475_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx475_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    cp$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_suspend_α
n470_call_builtin_prolog_β:
                        mov              r11, 194;                            jmp   cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_suspend_α:         mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx477_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx477_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n471_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n471_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   cp$2F0_γ
n471_suspend_β:         mov              r11, 195;                            jmp   n472_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    cp$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n473_suspend_α
n472_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_suspend_α:         mov              r11, 197
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx480_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx480_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n473_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   cp$2F0_γ
n473_suspend_β:         mov              r11, 197;                            jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_prolog_α:
                        mov              r11, 198
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
                        cmp              al, 104;                             je    cp$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   cp$2F0_ω
n474_call_builtin_prolog_β:
                        mov              r11, 198;                            jmp   cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
cp$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cp$2F0_β:
                                                                              jmp   n471_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
cp$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx481_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx481_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cp$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
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
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_prolog_α:
                        mov              r11, 199
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx487_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx487_101
.Lx487_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx487_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx487_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx487_101
.Lx487_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx487_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n483_lit_string_α
n482_call_builtin_prolog_β:
                        mov              r11, 199;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 8
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n484_call_proc_staged_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_proc_staged_α:
                        mov              r11, 201
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx490_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx490_21
.Lx490_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx490_21:              mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx490_1
                        mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx490_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx490_3]
                        push             rcx
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4];               jmp   rax
.Lx490_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx490_2
.Lx490_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx490_2
.Lx490_1:               call             rt_faildescr@PLT
.Lx490_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx490_29
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
.Lx490_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n486_call_builtin_prolog_α
                                                                              jmp   n485_suspend_α
n484_call_proc_staged_β:
                        mov              r11, 201;                            jmp   n486_call_builtin_prolog_α
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n485_suspend_α:         mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx492_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx492_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n485_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n485_suspend_β:         mov              r11, 202;                            jmp   n484_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_prolog_α:
                        mov              r11, 203
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
n486_call_builtin_prolog_β:
                        mov              r11, 203;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n485_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx493_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx493_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
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
                        lea              rax, [rip + n504_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_prolog_α:
                        mov              r11, 204
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx506_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx506_101
.Lx506_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx506_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx506_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx506_101
.Lx506_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx506_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n495_lit_string_α
n494_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 13
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n496_lit_string_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "test_ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n497_lit_string_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n498_lit_string_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 13
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n499_lit_integer_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "test_ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n500_call_builtin_prolog_α
.Lx511_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_prolog_α:
                        mov              r11, 210
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n501_lit_string_α
n500_call_builtin_prolog_β:
                        mov              r11, 210;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n502_call_builtin_prolog_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              r11, 212
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
                        cmp              al, 104;                             je    n505_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n503_call_proc_staged_α
n502_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   n505_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_proc_staged_α:
                        mov              r11, 213
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx516_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx516_21
.Lx516_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx516_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx516_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx516_23
.Lx516_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx516_23:              mov              rdi, qword ptr [rip + .Lx516_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx516_1
                        mov              rdi, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx516_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx516_3]
                        push             rcx
                        lea              rcx, [rip + .Lx516_3]
                        lea              rdx, [rip + .Lx516_4];               jmp   rax
.Lx516_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx516_2
.Lx516_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx516_2
.Lx516_1:               call             rt_faildescr@PLT
.Lx516_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx516_29
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
.Lx516_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n505_call_builtin_prolog_α
                                                                              jmp   n504_suspend_α
n503_call_proc_staged_β:
                        mov              r11, 213;                            jmp   n505_call_builtin_prolog_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n504_suspend_α:         mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx518_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx518_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n504_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n504_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n504_suspend_β:         mov              r11, 214;                            jmp   n503_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_prolog_α:
                        mov              r11, 215
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
n505_call_builtin_prolog_β:
                        mov              r11, 215;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n504_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx519_50
                        mov              qword ptr [rsp + 400], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx519_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$3D$2F2:
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rcx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1168
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$3D$2F2_α_body:
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_prolog_α:
                        mov              r11, 216
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx561_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx561_101
.Lx561_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx561_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx561_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx561_101
.Lx561_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx561_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n521_var_ref_α
n520_call_builtin_prolog_β:
                        mov              r11, 216;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        mov              r11, 219
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        lea              r8, [rsp + 1056]
.Lx566_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx566_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx566_41
                        cmp              esi, 1;                              jne   .Lx566_55
                        mov              r8, rax;                             jmp   .Lx566_40
.Lx566_55:              cmp              esi, 2;                              jne   .Lx566_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx566_41
                        mov              r8, rax;                             jmp   .Lx566_40
.Lx566_56:              cmp              al, 72;                              jne   .Lx566_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx566_41
                        cmp              rax, r8;                             je    .Lx566_41
                        mov              r8, rax;                             jmp   .Lx566_40
.Lx566_41:              lea              r9, [rsp + 1072]
.Lx566_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx566_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx566_43
                        cmp              esi, 1;                              jne   .Lx566_57
                        mov              r9, rax;                             jmp   .Lx566_42
.Lx566_57:              cmp              esi, 2;                              jne   .Lx566_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx566_43
                        mov              r9, rax;                             jmp   .Lx566_42
.Lx566_58:              cmp              al, 72;                              jne   .Lx566_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx566_43
                        cmp              rax, r9;                             je    .Lx566_43
                        mov              r9, rax;                             jmp   .Lx566_42
.Lx566_43:              cmp              r8, r9;                              je    .Lx566_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx566_44
                        cmp              al, 104;                             je    .Lx566_44
                        cmp              al, 72;                              jne   .Lx566_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx566_44
                                                                              jmp   .Lx566_45
.Lx566_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx566_53
                        cmp              al, 104;                             je    .Lx566_53
                        cmp              al, 72;                              jne   .Lx566_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx566_53
                                                                              jmp   .Lx566_46
.Lx566_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx566_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx566_51
.Lx566_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx566_47
                        cmp              al, 104;                             je    .Lx566_47
                        cmp              al, 72;                              jne   .Lx566_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx566_47
                                                                              jmp   .Lx566_48
.Lx566_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx566_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx566_51
.Lx566_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx566_49
                        cmp              dl, 80;                              je    .Lx566_53
                                                                              jmp   .Lx566_52
.Lx566_49:              cmp              dl, 80;                              je    .Lx566_52
                        cmp              cl, 5;                               je    .Lx566_53
                        cmp              dl, 5;                               je    .Lx566_53
                        cmp              cl, 3;                               jne   .Lx566_50
                        cmp              dl, 3;                               jne   .Lx566_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx566_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx566_51
                                                                              jmp   .Lx566_52
.Lx566_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx566_53
.Lx566_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx566_54
.Lx566_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx566_54
.Lx566_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx566_54:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n528_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n524_var_ref_α
n523_call_builtin_prolog_β:
                        mov              r11, 219;                            jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n525_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n526_call_builtin_prolog_α
.Lx569_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        movabs           rsi, 1000
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n528_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n527_suspend_α
n526_call_builtin_prolog_β:
                        mov              r11, 222;                            jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n527_suspend_α:         mov              r11, 223
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx572_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx572_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n527_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3D$2F2_γ
n527_suspend_β:         mov              r11, 223;                            jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n529_var_ref_α
n528_call_builtin_prolog_β:
                        mov              r11, 224;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n530_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n531_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n531_call_builtin_prolog_α:
                        mov              r11, 227
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lx578_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx578_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx578_41
                        cmp              esi, 1;                              jne   .Lx578_55
                        mov              r8, rax;                             jmp   .Lx578_40
.Lx578_55:              cmp              esi, 2;                              jne   .Lx578_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx578_41
                        mov              r8, rax;                             jmp   .Lx578_40
.Lx578_56:              cmp              al, 72;                              jne   .Lx578_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx578_41
                        cmp              rax, r8;                             je    .Lx578_41
                        mov              r8, rax;                             jmp   .Lx578_40
.Lx578_41:              lea              r9, [rsp + 864]
.Lx578_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx578_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx578_43
                        cmp              esi, 1;                              jne   .Lx578_57
                        mov              r9, rax;                             jmp   .Lx578_42
.Lx578_57:              cmp              esi, 2;                              jne   .Lx578_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx578_43
                        mov              r9, rax;                             jmp   .Lx578_42
.Lx578_58:              cmp              al, 72;                              jne   .Lx578_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx578_43
                        cmp              rax, r9;                             je    .Lx578_43
                        mov              r9, rax;                             jmp   .Lx578_42
.Lx578_43:              cmp              r8, r9;                              je    .Lx578_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx578_44
                        cmp              al, 104;                             je    .Lx578_44
                        cmp              al, 72;                              jne   .Lx578_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx578_44
                                                                              jmp   .Lx578_45
.Lx578_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx578_53
                        cmp              al, 104;                             je    .Lx578_53
                        cmp              al, 72;                              jne   .Lx578_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx578_53
                                                                              jmp   .Lx578_46
.Lx578_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx578_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx578_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx578_51
.Lx578_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx578_47
                        cmp              al, 104;                             je    .Lx578_47
                        cmp              al, 72;                              jne   .Lx578_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx578_47
                                                                              jmp   .Lx578_48
.Lx578_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx578_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx578_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx578_51
.Lx578_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx578_49
                        cmp              dl, 80;                              je    .Lx578_53
                                                                              jmp   .Lx578_52
.Lx578_49:              cmp              dl, 80;                              je    .Lx578_52
                        cmp              cl, 5;                               je    .Lx578_53
                        cmp              dl, 5;                               je    .Lx578_53
                        cmp              cl, 3;                               jne   .Lx578_50
                        cmp              dl, 3;                               jne   .Lx578_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx578_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx578_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx578_51
                                                                              jmp   .Lx578_52
.Lx578_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx578_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx578_53
.Lx578_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx578_54
.Lx578_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx578_54
.Lx578_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx578_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n536_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n532_var_ref_α
n531_call_builtin_prolog_β:
                        mov              r11, 227;                            jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n533_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n534_call_builtin_prolog_α
.Lx581_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_prolog_α:
                        mov              r11, 230
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        movabs           rsi, 1000
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n536_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n535_suspend_α
n534_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n535_suspend_α:         mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx584_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx584_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n535_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n535_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3D$2F2_γ
n535_suspend_β:         mov              r11, 231;                            jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_prolog_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n537_var_ref_α
n536_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n538_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n539_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_prolog_α:
                        mov              r11, 235
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        lea              r8, [rsp + 640]
.Lx590_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx590_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx590_41
                        cmp              esi, 1;                              jne   .Lx590_55
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_55:              cmp              esi, 2;                              jne   .Lx590_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx590_41
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_56:              cmp              al, 72;                              jne   .Lx590_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx590_41
                        cmp              rax, r8;                             je    .Lx590_41
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_41:              lea              r9, [rsp + 656]
.Lx590_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx590_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx590_43
                        cmp              esi, 1;                              jne   .Lx590_57
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_57:              cmp              esi, 2;                              jne   .Lx590_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx590_43
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_58:              cmp              al, 72;                              jne   .Lx590_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx590_43
                        cmp              rax, r9;                             je    .Lx590_43
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_43:              cmp              r8, r9;                              je    .Lx590_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx590_44
                        cmp              al, 104;                             je    .Lx590_44
                        cmp              al, 72;                              jne   .Lx590_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx590_44
                                                                              jmp   .Lx590_45
.Lx590_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx590_53
                        cmp              al, 104;                             je    .Lx590_53
                        cmp              al, 72;                              jne   .Lx590_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx590_53
                                                                              jmp   .Lx590_46
.Lx590_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx590_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx590_51
.Lx590_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx590_47
                        cmp              al, 104;                             je    .Lx590_47
                        cmp              al, 72;                              jne   .Lx590_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx590_47
                                                                              jmp   .Lx590_48
.Lx590_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx590_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx590_51
.Lx590_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx590_49
                        cmp              dl, 80;                              je    .Lx590_53
                                                                              jmp   .Lx590_52
.Lx590_49:              cmp              dl, 80;                              je    .Lx590_52
                        cmp              cl, 5;                               je    .Lx590_53
                        cmp              dl, 5;                               je    .Lx590_53
                        cmp              cl, 3;                               jne   .Lx590_50
                        cmp              dl, 3;                               jne   .Lx590_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx590_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx590_51
                                                                              jmp   .Lx590_52
.Lx590_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx590_53
.Lx590_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx590_54
.Lx590_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx590_54
.Lx590_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx590_54:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n544_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n540_var_ref_α
n539_call_builtin_prolog_β:
                        mov              r11, 235;                            jmp   n544_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n541_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_integer_α:     mov              r11, 237
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n542_call_builtin_prolog_α
.Lx593_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              r11, 238
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        movabs           rsi, 1000
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n544_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n543_suspend_α
n542_call_builtin_prolog_β:
                        mov              r11, 238;                            jmp   n544_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n543_suspend_α:         mov              r11, 239
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx596_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx596_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n543_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n543_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3D$2F2_γ
n543_suspend_β:         mov              r11, 239;                            jmp   n544_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n544_call_builtin_prolog_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n545_var_ref_α
n544_call_builtin_prolog_β:
                        mov              r11, 240;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n546_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n547_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_builtin_prolog_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lx602_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx602_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_41
                        cmp              esi, 1;                              jne   .Lx602_55
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_55:              cmp              esi, 2;                              jne   .Lx602_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_41
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_56:              cmp              al, 72;                              jne   .Lx602_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_41
                        cmp              rax, r8;                             je    .Lx602_41
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_41:              lea              r9, [rsp + 448]
.Lx602_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx602_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_43
                        cmp              esi, 1;                              jne   .Lx602_57
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_57:              cmp              esi, 2;                              jne   .Lx602_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_43
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_58:              cmp              al, 72;                              jne   .Lx602_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_43
                        cmp              rax, r9;                             je    .Lx602_43
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_43:              cmp              r8, r9;                              je    .Lx602_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx602_44
                        cmp              al, 104;                             je    .Lx602_44
                        cmp              al, 72;                              jne   .Lx602_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx602_44
                                                                              jmp   .Lx602_45
.Lx602_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx602_53
                        cmp              al, 104;                             je    .Lx602_53
                        cmp              al, 72;                              jne   .Lx602_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_53
                                                                              jmp   .Lx602_46
.Lx602_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx602_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx602_51
.Lx602_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx602_47
                        cmp              al, 104;                             je    .Lx602_47
                        cmp              al, 72;                              jne   .Lx602_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_47
                                                                              jmp   .Lx602_48
.Lx602_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx602_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx602_51
.Lx602_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx602_49
                        cmp              dl, 80;                              je    .Lx602_53
                                                                              jmp   .Lx602_52
.Lx602_49:              cmp              dl, 80;                              je    .Lx602_52
                        cmp              cl, 5;                               je    .Lx602_53
                        cmp              dl, 5;                               je    .Lx602_53
                        cmp              cl, 3;                               jne   .Lx602_50
                        cmp              dl, 3;                               jne   .Lx602_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx602_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx602_51
                                                                              jmp   .Lx602_52
.Lx602_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx602_53
.Lx602_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx602_54
.Lx602_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx602_54
.Lx602_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx602_54:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n552_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n548_var_ref_α
n547_call_builtin_prolog_β:
                        mov              r11, 243;                            jmp   n552_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n549_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_integer_α:     mov              r11, 245
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n550_call_builtin_prolog_α
.Lx605_0:               .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n550_call_builtin_prolog_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        movabs           rsi, 5000
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n552_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n551_suspend_α
n550_call_builtin_prolog_β:
                        mov              r11, 246;                            jmp   n552_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n551_suspend_α:         mov              r11, 247
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx608_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx608_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n551_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n551_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3D$2F2_γ
n551_suspend_β:         mov              r11, 247;                            jmp   n552_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_call_builtin_prolog_α:
                        mov              r11, 248
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n553_var_ref_α
n552_call_builtin_prolog_β:
                        mov              r11, 248;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n554_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n555_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_builtin_prolog_α:
                        mov              r11, 251
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
.Lx614_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx614_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx614_41
                        cmp              esi, 1;                              jne   .Lx614_55
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_55:              cmp              esi, 2;                              jne   .Lx614_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx614_41
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_56:              cmp              al, 72;                              jne   .Lx614_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx614_41
                        cmp              rax, r8;                             je    .Lx614_41
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_41:              lea              r9, [rsp + 240]
.Lx614_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx614_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx614_43
                        cmp              esi, 1;                              jne   .Lx614_57
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_57:              cmp              esi, 2;                              jne   .Lx614_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx614_43
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_58:              cmp              al, 72;                              jne   .Lx614_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx614_43
                        cmp              rax, r9;                             je    .Lx614_43
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_43:              cmp              r8, r9;                              je    .Lx614_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx614_44
                        cmp              al, 104;                             je    .Lx614_44
                        cmp              al, 72;                              jne   .Lx614_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx614_44
                                                                              jmp   .Lx614_45
.Lx614_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx614_53
                        cmp              al, 104;                             je    .Lx614_53
                        cmp              al, 72;                              jne   .Lx614_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx614_53
                                                                              jmp   .Lx614_46
.Lx614_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx614_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx614_51
.Lx614_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx614_47
                        cmp              al, 104;                             je    .Lx614_47
                        cmp              al, 72;                              jne   .Lx614_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx614_47
                                                                              jmp   .Lx614_48
.Lx614_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx614_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx614_51
.Lx614_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx614_49
                        cmp              dl, 80;                              je    .Lx614_53
                                                                              jmp   .Lx614_52
.Lx614_49:              cmp              dl, 80;                              je    .Lx614_52
                        cmp              cl, 5;                               je    .Lx614_53
                        cmp              dl, 5;                               je    .Lx614_53
                        cmp              cl, 3;                               jne   .Lx614_50
                        cmp              dl, 3;                               jne   .Lx614_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx614_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx614_51
                                                                              jmp   .Lx614_52
.Lx614_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx614_53
.Lx614_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx614_54
.Lx614_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx614_54
.Lx614_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx614_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n560_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n556_var_ref_α
n555_call_builtin_prolog_β:
                        mov              r11, 251;                            jmp   n560_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n557_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_integer_α:     mov              r11, 253
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n558_call_builtin_prolog_α
.Lx617_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        movabs           rsi, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n560_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n559_suspend_α
n558_call_builtin_prolog_β:
                        mov              r11, 254;                            jmp   n560_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_suspend_α:         mov              r11, 255
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx620_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx620_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n559_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n559_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3D$2F2_γ
n559_suspend_β:         mov              r11, 255;                            jmp   n560_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_prolog_α:
                        mov              r11, 256
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
                        cmp              al, 104;                             je    $3D$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $3D$2F2_ω
n560_call_builtin_prolog_β:
                        mov              r11, 256;                            jmp   $3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$3D$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$3D$2F2_β:
                                                                              jmp   n527_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$3D$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx621_50
                        mov              qword ptr [rsp + 1120], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx621_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1176]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$3D$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1184]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_ch_shift$2F0:
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
test_ch_shift$2F0_α_body:
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n622_call_builtin_prolog_α:
                        mov              r11, 257
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx630_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx630_101
.Lx630_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx630_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx630_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx630_101
.Lx630_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx630_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_ch_shift$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n623_lit_string_α
n622_call_builtin_prolog_β:
                        mov              r11, 257;                            jmp   test_ch_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n624_lit_string_α
.Lx631_0:               .quad            .Lx631_0_s
.Lx631_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 8
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n625_lit_string_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n626_call_builtin_prolog_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_prolog_α:
                        mov              r11, 261
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
                        cmp              al, 104;                             je    n629_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n627_call_proc_staged_α
n626_call_builtin_prolog_β:
                        mov              r11, 261;                            jmp   n629_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        mov              r11, 262
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx636_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx636_21
.Lx636_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx636_21:              mov              rdi, qword ptr [rip + .Lx636_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx636_1
                        mov              rdi, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx636_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx636_3]
                        push             rcx
                        lea              rcx, [rip + .Lx636_3]
                        lea              rdx, [rip + .Lx636_4];               jmp   rax
.Lx636_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx636_2
.Lx636_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx636_2
.Lx636_1:               call             rt_faildescr@PLT
.Lx636_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx636_29
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
.Lx636_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n629_call_builtin_prolog_α
                                                                              jmp   n628_suspend_α
n627_call_proc_staged_β:
                        mov              r11, 262;                            jmp   n629_call_builtin_prolog_α
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n628_suspend_α:         mov              r11, 263
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx638_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx638_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n628_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_ch_shift$2F0_γ
n628_suspend_β:         mov              r11, 263;                            jmp   n627_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_prolog_α:
                        mov              r11, 264
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
                        cmp              al, 104;                             je    test_ch_shift$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_ch_shift$2F0_ω
n629_call_builtin_prolog_β:
                        mov              r11, 264;                            jmp   test_ch_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_ch_shift$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_ch_shift$2F0_β:
                                                                              jmp   n628_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_ch_shift$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx639_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx639_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_ch_shift$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
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
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n640_call_builtin_prolog_α:
                        mov              r11, 265
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx645_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx645_101
.Lx645_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx645_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx645_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx645_101
.Lx645_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx645_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n641_lit_string_α
n640_call_builtin_prolog_β:
                        mov              r11, 265;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 8
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n642_call_proc_staged_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_proc_staged_α:
                        mov              r11, 267
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx648_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx648_21
.Lx648_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx648_21:              mov              rdi, qword ptr [rip + .Lx648_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx648_1
                        mov              rdi, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx648_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx648_3]
                        push             rcx
                        lea              rcx, [rip + .Lx648_3]
                        lea              rdx, [rip + .Lx648_4];               jmp   rax
.Lx648_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx648_2
.Lx648_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx648_2
.Lx648_1:               call             rt_faildescr@PLT
.Lx648_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx648_29
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
.Lx648_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n644_call_builtin_prolog_α
                                                                              jmp   n643_suspend_α
n642_call_proc_staged_β:
                        mov              r11, 267;                            jmp   n644_call_builtin_prolog_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n643_suspend_α:         mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx650_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx650_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n643_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n643_suspend_β:         mov              r11, 268;                            jmp   n642_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_prolog_α:
                        mov              r11, 269
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
n644_call_builtin_prolog_β:
                        mov              r11, 269;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n643_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx651_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx651_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
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
                        lea              rax, [rip + n657_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n652_call_builtin_prolog_α:
                        mov              r11, 270
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx659_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx659_101
.Lx659_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx659_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx659_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx659_101
.Lx659_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx659_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n653_lit_string_α
n652_call_builtin_prolog_β:
                        mov              r11, 270;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n654_lit_string_α
.Lx660_0:               .quad            .Lx660_0_s
.Lx660_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n655_call_builtin_prolog_α
.Lx661_0:               .quad            .Lx661_0_s
.Lx661_0_s:             .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n655_call_builtin_prolog_α:
                        mov              r11, 273
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
                        cmp              al, 104;                             je    n658_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n656_call_proc_staged_α
n655_call_builtin_prolog_β:
                        mov              r11, 273;                            jmp   n658_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n656_call_proc_staged_α:
                        mov              r11, 274
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx664_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx664_21
.Lx664_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx664_21:              mov              rdi, qword ptr [rip + .Lx664_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx664_1
                        mov              rdi, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx664_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx664_3]
                        push             rcx
                        lea              rcx, [rip + .Lx664_3]
                        lea              rdx, [rip + .Lx664_4];               jmp   rax
.Lx664_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx664_2
.Lx664_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx664_2
.Lx664_1:               call             rt_faildescr@PLT
.Lx664_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx664_29
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
.Lx664_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n658_call_builtin_prolog_α
                                                                              jmp   n657_suspend_α
n656_call_proc_staged_β:
                        mov              r11, 274;                            jmp   n658_call_builtin_prolog_α
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n657_suspend_α:         mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx666_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx666_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n657_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n657_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n657_suspend_β:         mov              r11, 275;                            jmp   n656_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_prolog_α:
                        mov              r11, 276
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
n658_call_builtin_prolog_β:
                        mov              r11, 276;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n657_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx667_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx667_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__a$2F0:
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
a$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n668_call_builtin_prolog_α:
                        mov              r11, 277
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx672_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx672_101
.Lx672_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx672_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx672_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx672_101
.Lx672_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx672_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    a$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n669_move_label_α
n668_call_builtin_prolog_β:
                        mov              r11, 277;                            jmp   a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n669_move_label_α:      mov              r11, 278
                        lea              rax, [rip + n671_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   a$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n670_disjunction_α:     mov              r11, 279
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    a$2F0_ω
                                                                              jmp   rax
n670_disjunction_β:     mov              r11, 279;                            jmp   a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_call_builtin_prolog_α:
                        mov              r11, 280
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
                        cmp              al, 104;                             je    a$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   a$2F0_ω
n671_call_builtin_prolog_β:
                        mov              r11, 280;                            jmp   a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
a$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
a$2F0_β:
                                                                              jmp   n670_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
a$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx678_2]
                        lea              rdx, [rip + .Lx678_3];               jmp   FN__a$2F0
.Lx678_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx678_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
n679_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 8
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n680_call_proc_staged_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        mov              r11, 282
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx683_21
.Lx683_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx683_21:              mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx683_1
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx683_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx683_3]
                        push             rcx
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4];               jmp   rax
.Lx683_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx683_2
.Lx683_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx683_2
.Lx683_1:               call             rt_faildescr@PLT
.Lx683_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx683_29
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
.Lx683_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n680_call_proc_staged_β:
                        mov              r11, 282;                            jmp   main_ω
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "end_tests/1"
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
.Lstartup_pname0:       .string          "test/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test2_2/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__test2_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "local_stack_expansion_many_chp/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__local_stack_expansion_many_chp$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_test/4"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__pj_test$2F4
                        .quad            pj_test$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            608
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "lshift/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__lshift$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            320
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "lshift/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__lshift$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            528
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "make_or/2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__make_or$2F2
                        .quad            make_or$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1024
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "test2_1/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__test2_1$2F0
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
.Lstartup_pname8:       .string          "or_dept/1"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__or_dept$2F1
                        .quad            or_dept$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          ",/2"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__$2C$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2384
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "cp/0"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__cp$2F0
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
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__pj_dir_2$2F0
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
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
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
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "=/2"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__$3D$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1152
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "test_ch_shift/0"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__test_ch_shift$2F0
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
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__pj_dir_3$2F0
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
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
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
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "a/0"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__a$2F0
                        .quad            a$2F0_dcα
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
