                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F1:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 1008
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F1_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx32_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx32_101
.Lx32_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx32_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx32_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx32_101
.Lx32_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx32_101:              mov              qword ptr [rsp + 32], rax
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
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 7
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n3_call_builtin_prolog_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "undo_or"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              rsi, qword ptr [rip + .Lx36_2];      jmp   .Lx36_3
.Lx36_2:                .quad            .Lx36_2_s
.Lx36_2_s:              .string          "undo_or"
.Lx36_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        mov              qword ptr [rsp + 832], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx40_20
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx40_21
.Lx40_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx40_21:               lea              rax, [rip + .Lx40_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx40_1
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4];                jmp   rax
.Lx40_3:                mov              qword ptr [rsp + 840], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 832]
                        test             rax, rax;                            jne   .Lx40_5
                        mov              qword ptr [rsp + 832], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx40_2
.Lx40_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx40_2
.Lx40_4:                mov              rax, qword ptr [rsp + 832]
                        test             rax, rax;                            jne   .Lx40_6
                        mov              qword ptr [rsp + 832], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx40_2
.Lx40_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx40_2
.Lx40_1:                call             rt_faildescr@PLT
.Lx40_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx40_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
.Lx40_29:               mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n6_suspend_α
n5_call_proc_staged_β:  mov              r11, 6
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 832], 0
                        lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
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
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        lea              r8, [rip + .Lx40_7]
                        push             r8
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4];                jmp   rax
.Lx40_7:                add              rsp, 8
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n6_suspend_α
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx42_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 960];          jmp   rax
.Lx42_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n6_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n6_suspend_β:           mov              r11, 7;                              jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 7
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n10_call_builtin_prolog_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "clauses"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              rsi, qword ptr [rip + .Lx47_2];      jmp   .Lx47_3
.Lx47_2:                .quad            .Lx47_2_s
.Lx47_2_s:              .string          "clauses"
.Lx47_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n13_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_call_proc_staged_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α: mov              r11, 12
                        mov              qword ptr [rsp + 656], 0
                        lea              rax, [rip + .Lx49_7]
                        push             rax
                        mov              edi, 12
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx49_1
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4];                jmp   rax
.Lx49_3:                mov              qword ptr [rsp + 664], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 656]
                        test             rax, rax;                            jne   .Lx49_5
                        mov              qword ptr [rsp + 656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx49_2
.Lx49_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx49_2
.Lx49_4:                mov              rax, qword ptr [rsp + 656]
                        test             rax, rax;                            jne   .Lx49_6
                        mov              qword ptr [rsp + 656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx49_2
.Lx49_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx49_2
.Lx49_1:                call             rt_faildescr@PLT
.Lx49_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx49_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
.Lx49_29:               mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n13_call_builtin_prolog_α
                                                                              jmp   n12_suspend_α
n11_call_proc_staged_β: mov              r11, 12
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 656], 0
                        lea              rdi, [rsp + 672]
                        lea              rsi, [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n13_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              ecx, 16
                        mov              r8d, 400
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 12
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n13_call_builtin_prolog_α
                        lea              r8, [rip + .Lx49_7]
                        push             r8
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4];                jmp   rax
.Lx49_7:                add              rsp, 8
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n13_call_builtin_prolog_α
                                                                              jmp   n12_suspend_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "t1/0"
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:          mov              r11, 13
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx51_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 960];          jmp   rax
.Lx51_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n12_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n12_suspend_β:          mov              r11, 13;                             jmp   n11_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 6
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n16_call_builtin_prolog_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "error2"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              rsi, qword ptr [rip + .Lx56_2];      jmp   .Lx56_3
.Lx56_2:                .quad            .Lx56_2_s
.Lx56_2_s:              .string          "error2"
.Lx56_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n18_call_builtin_prolog_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx58_102
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216];          jmp   .Lx58_101
.Lx58_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx58_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx58_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx58_101
.Lx58_100:              lea              rdi, [rsp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx58_101:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 8
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n20_call_builtin_prolog_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn61:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 5
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n22_var_ref_α
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
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
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_call_proc_staged_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx67_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx67_21
.Lx67_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx67_21:               mov              rdi, qword ptr [rip + .Lx67_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx67_1
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx67_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx67_3]
                        push             rcx
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4];                jmp   rax
.Lx67_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx67_2
.Lx67_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx67_2
.Lx67_1:                call             rt_faildescr@PLT
.Lx67_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx67_29
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
.Lx67_29:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                                                                              jmp   n25_lit_string_α
n24_call_proc_staged_β: mov              r11, 25;                             jmp   n27_call_builtin_prolog_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n26_call_builtin_prolog_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn70:               .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n24_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_lit_integer_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n24_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn72:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_lit_integer_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n29_call_proc_staged_α
.Lx73_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: mov              r11, 30
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx75_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx75_21
.Lx75_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx75_21:               lea              rax, [rip + .Lx75_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx75_1
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4];                jmp   rax
.Lx75_3:                mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx75_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx75_2
.Lx75_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx75_2
.Lx75_4:                mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx75_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx75_2
.Lx75_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx75_2
.Lx75_1:                call             rt_faildescr@PLT
.Lx75_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx75_29
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
.Lx75_29:               mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n30_suspend_α
                                                                              jmp   n31_call_builtin_prolog_α
n29_call_proc_staged_β: mov              r11, 30
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n30_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 0
                        mov              r8d, 128
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
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n30_suspend_α
                        lea              r8, [rip + .Lx75_7]
                        push             r8
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4];                jmp   rax
.Lx75_7:                add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n30_suspend_α
                                                                              jmp   n31_call_builtin_prolog_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n30_suspend_α:          mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx77_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 960];          jmp   rax
.Lx77_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n30_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n30_suspend_β]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n30_suspend_β:          mov              r11, 31;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
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
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx78_50
                        mov              qword ptr [rsp + 960], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 960];          jmp   rax
.Lx78_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rcx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F2_α_body:
                        lea              rax, [rip + n89_suspend_β]
                        mov              qword ptr [rsp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 33
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx100_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx100_101
.Lx100_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx100_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx100_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx100_101
.Lx100_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx100_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n82_call_builtin_prolog_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              rsi, qword ptr [rip + .Lx104_2];     jmp   .Lx104_3
.Lx104_2:               .quad            .Lx104_2_s
.Lx104_2_s:             .string          "error"
.Lx104_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n90_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_var_ref_α
n82_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n85_lit_string_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n86_call_builtin_prolog_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n90_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_call_builtin_prolog_α
n86_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx110_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx110_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx110_41
                        cmp              esi, 1;                              jne   .Lx110_55
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_55:              cmp              esi, 2;                              jne   .Lx110_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx110_41
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_56:              cmp              al, 72;                              jne   .Lx110_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx110_41
                        cmp              rax, r8;                             je    .Lx110_41
                        mov              r8, rax;                             jmp   .Lx110_40
.Lx110_41:              lea              r9, [rsp + 464]
.Lx110_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx110_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx110_43
                        cmp              esi, 1;                              jne   .Lx110_57
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_57:              cmp              esi, 2;                              jne   .Lx110_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx110_43
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_58:              cmp              al, 72;                              jne   .Lx110_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx110_43
                        cmp              rax, r9;                             je    .Lx110_43
                        mov              r9, rax;                             jmp   .Lx110_42
.Lx110_43:              cmp              r8, r9;                              je    .Lx110_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx110_44
                        cmp              al, 104;                             je    .Lx110_44
                        cmp              al, 72;                              jne   .Lx110_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx110_44
                                                                              jmp   .Lx110_45
.Lx110_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx110_53
                        cmp              al, 104;                             je    .Lx110_53
                        cmp              al, 72;                              jne   .Lx110_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx110_53
                                                                              jmp   .Lx110_46
.Lx110_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx110_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx110_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx110_51
.Lx110_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx110_47
                        cmp              al, 104;                             je    .Lx110_47
                        cmp              al, 72;                              jne   .Lx110_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx110_47
                                                                              jmp   .Lx110_48
.Lx110_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx110_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx110_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx110_51
.Lx110_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx110_49
                        cmp              dl, 80;                              je    .Lx110_53
                                                                              jmp   .Lx110_52
.Lx110_49:              cmp              dl, 80;                              je    .Lx110_52
                        cmp              cl, 5;                               je    .Lx110_53
                        cmp              dl, 5;                               je    .Lx110_53
                        cmp              cl, 3;                               jne   .Lx110_50
                        cmp              dl, 3;                               jne   .Lx110_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx110_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx110_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx110_51
                                                                              jmp   .Lx110_52
.Lx110_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx110_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx110_53
.Lx110_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx110_54
.Lx110_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx110_54
.Lx110_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx110_54:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n90_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_call_proc_staged_α
n87_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α: mov              r11, 42
                        mov              qword ptr [rsp + 400], 0
                        lea              rax, [rip + .Lx112_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx112_1
                        lea              rcx, [rip + .Lx112_3]
                        lea              rdx, [rip + .Lx112_4];               jmp   rax
.Lx112_3:               mov              qword ptr [rsp + 408], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx112_5
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx112_2
.Lx112_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx112_2
.Lx112_4:               mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx112_6
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx112_2
.Lx112_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx112_2
.Lx112_1:               call             rt_faildescr@PLT
.Lx112_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx112_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n90_call_builtin_prolog_α
                                                                              jmp   n89_suspend_α
n88_call_proc_staged_β: mov              r11, 42
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 400], 0
                        lea              rdi, [rsp + 416]
                        lea              rsi, [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n90_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              ecx, 16
                        mov              r8d, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n90_call_builtin_prolog_α
                        lea              r8, [rip + .Lx112_7]
                        push             r8
                        lea              rcx, [rip + .Lx112_3]
                        lea              rdx, [rip + .Lx112_4];               jmp   rax
.Lx112_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n90_call_builtin_prolog_α
                                                                              jmp   n89_suspend_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "$disj1/0"
#-----------------------------------------------------------------------------------------------------------------------
n89_suspend_α:          mov              r11, 43
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx114_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 672];          jmp   rax
.Lx114_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n89_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n89_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F2_γ
n89_suspend_β:          mov              r11, 43;                             jmp   n88_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 7
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n93_call_builtin_prolog_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              rsi, qword ptr [rip + .Lx119_2];     jmp   .Lx119_3
.Lx119_2:               .quad            .Lx119_2_s
.Lx119_2_s:             .string          "cleanup"
.Lx119_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 4
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n96_call_builtin_prolog_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              rsi, qword ptr [rip + .Lx123_2];     jmp   .Lx123_3
.Lx123_2:               .quad            .Lx123_2_s
.Lx123_2_s:             .string          "fail"
.Lx123_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_lit_string_α
n96_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n98_call_proc_staged_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α: mov              r11, 52
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx126_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx126_21
.Lx126_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx126_21:              mov              rdi, qword ptr [rip + .Lx126_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx126_1
                        mov              rdi, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx126_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx126_3]
                        push             rcx
                        lea              rcx, [rip + .Lx126_3]
                        lea              rdx, [rip + .Lx126_4];               jmp   rax
.Lx126_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx126_2
.Lx126_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx126_2
.Lx126_1:               call             rt_faildescr@PLT
.Lx126_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx126_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx126_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                                                                              jmp   n98_call_proc_staged_β
n98_call_proc_staged_β: mov              r11, 52;                             jmp   n99_call_builtin_prolog_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 53
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
n99_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n89_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx127_50
                        mov              qword ptr [rsp + 672], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 672];          jmp   rax
.Lx127_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 712]
                        add              rsp, 736;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 720]
                        add              rsp, 736;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj1$2F0:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 320
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj1$2F0_α_body:
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rsp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              r11, 54
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx137_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx137_101
.Lx137_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx137_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx137_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx137_101
.Lx137_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx137_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $disj1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n129_lit_string_α
n128_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   $disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 55
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n130_lit_string_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n131_call_builtin_prolog_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_call_proc_staged_α
n131_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              r11, 58
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx142_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx142_21
.Lx142_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx142_21:              mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx142_1
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx142_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx142_3]
                        push             rcx
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4];               jmp   rax
.Lx142_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx142_2
.Lx142_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx142_2
.Lx142_1:               call             rt_faildescr@PLT
.Lx142_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx142_29
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
.Lx142_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                                                                              jmp   n132_call_proc_staged_β
n132_call_proc_staged_β:
                        mov              r11, 58;                             jmp   n133_call_builtin_prolog_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    $disj1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_call_proc_staged_α
n133_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   $disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              r11, 60
                        call             ok$2F0_dcα;                          jmp   .Lx145_2
.Lx145_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx145_29
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
.Lx145_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n136_call_builtin_prolog_α
                                                                              jmp   n135_suspend_α
n134_call_proc_staged_β:
                        mov              r11, 60;                             jmp   n136_call_builtin_prolog_α
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "ok/0"
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:         mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx147_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Lx147_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n135_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj1$2F0_γ
n135_suspend_β:         mov              r11, 61;                             jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 62
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
                        cmp              al, 104;                             je    $disj1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj1$2F0_ω
n136_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   $disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj1$2F0_β:
                                                                              jmp   n135_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx148_50
                        mov              qword ptr [rsp + 288], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Lx148_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 4848
                        mov              qword ptr [rsp + 4824], rcx
                        mov              qword ptr [rsp + 4832], rdx
                        mov              qword ptr [rsp + 4840], rsp
                        mov              rdi, rsp
                        mov              esi, 4768
                        mov              edx, 4816
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_test$2F4_α_body:
                        lea              rax, [rip + n184_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        mov              r11, 63
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx293_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx293_101
.Lx293_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx293_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx293_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx293_101
.Lx293_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx293_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_var_ref_α
n149_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx;         jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 65
                        mov              qword ptr [rsp + 4752], 2            # result
                        mov              dword ptr [rsp + 4756], 4
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n152_call_builtin_prolog_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4712], rax
                        lea              rdi, [rsp + 4704]
                        mov              rsi, qword ptr [rip + .Lx297_2];     jmp   .Lx297_3
.Lx297_2:               .quad            .Lx297_2_s
.Lx297_2_s:             .string          "undo"
.Lx297_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_var_ref_α
n152_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx;         jmp   n154_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 68
                        mov              qword ptr [rsp + 4672], 2            # result
                        mov              dword ptr [rsp + 4676], 7
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n155_call_builtin_prolog_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "undo_or"
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4624]
                        mov              rsi, qword ptr [rip + .Lx301_2];     jmp   .Lx301_3
.Lx301_2:               .quad            .Lx301_2_s
.Lx301_2_s:             .string          "undo_or"
.Lx301_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 71
                        mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 2
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n158_call_builtin_prolog_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4552], rax
                        lea              rdi, [rsp + 4544]
                        mov              rsi, qword ptr [rip + .Lx305_2];     jmp   .Lx305_3
.Lx305_2:               .quad            .Lx305_2_s
.Lx305_2_s:             .string          "[]"
.Lx305_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_var_ref_α
n158_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n161_lit_string_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 4240], 2            # result
                        mov              dword ptr [rsp + 4244], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n162_lit_string_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 76
                        mov              qword ptr [rsp + 3856], 2            # result
                        mov              dword ptr [rsp + 3860], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n163_lit_string_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n164_lit_integer_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rsp + 3664], 3            # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n165_call_builtin_prolog_α
.Lx312_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3696]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n166_var_ref_α
n165_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n167_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3800], rax
                        lea              rdi, [rsp + 3792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n168_lit_string_α
n167_call_builtin_prolog_β:
                        mov              r11, 81;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n169_lit_string_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 4
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n170_lit_string_α
.Lx318_0:               .quad            .Lx318_0_s
.Lx318_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 5
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n171_var_ref_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_call_builtin_prolog_α
n172_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3992], rax
                        lea              rdi, [rsp + 3984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_lit_string_α
n173_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rsp + 4048], 2            # result
                        mov              dword ptr [rsp + 4052], 4
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n175_call_builtin_prolog_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 4104], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4088], rax
                        lea              rdi, [rsp + 4080]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n176_call_builtin_prolog_α
n175_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4216], rax
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n177_lit_string_α
n176_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 4416], 2            # result
                        mov              dword ptr [rsp + 4420], 2
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 4424], rax;         jmp   n178_lit_string_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 4336], 2            # result
                        mov              dword ptr [rsp + 4340], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n179_lit_integer_α
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rsp + 4256], 3            # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n180_call_builtin_prolog_α
.Lx329_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4296], rax
                        lea              rdi, [rsp + 4288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_call_builtin_prolog_α
n180_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 4376], rax
                        lea              rdi, [rsp + 4368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_call_builtin_prolog_α
n181_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
                        mov              r11, 96
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4488], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4456], rax
                        lea              rdi, [rsp + 4448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_call_builtin_prolog_α
n182_call_builtin_prolog_β:
                        mov              r11, 96;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3624], rax
                        lea              rdi, [rsp + 3616]
                        lea              r8, [rsp + 3616]
.Lx333_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx333_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx333_41
                        cmp              esi, 1;                              jne   .Lx333_55
                        mov              r8, rax;                             jmp   .Lx333_40
.Lx333_55:              cmp              esi, 2;                              jne   .Lx333_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx333_41
                        mov              r8, rax;                             jmp   .Lx333_40
.Lx333_56:              cmp              al, 72;                              jne   .Lx333_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx333_41
                        cmp              rax, r8;                             je    .Lx333_41
                        mov              r8, rax;                             jmp   .Lx333_40
.Lx333_41:              lea              r9, [rsp + 3632]
.Lx333_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx333_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx333_43
                        cmp              esi, 1;                              jne   .Lx333_57
                        mov              r9, rax;                             jmp   .Lx333_42
.Lx333_57:              cmp              esi, 2;                              jne   .Lx333_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx333_43
                        mov              r9, rax;                             jmp   .Lx333_42
.Lx333_58:              cmp              al, 72;                              jne   .Lx333_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx333_43
                        cmp              rax, r9;                             je    .Lx333_43
                        mov              r9, rax;                             jmp   .Lx333_42
.Lx333_43:              cmp              r8, r9;                              je    .Lx333_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx333_44
                        cmp              al, 104;                             je    .Lx333_44
                        cmp              al, 72;                              jne   .Lx333_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx333_44
                                                                              jmp   .Lx333_45
.Lx333_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx333_53
                        cmp              al, 104;                             je    .Lx333_53
                        cmp              al, 72;                              jne   .Lx333_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx333_53
                                                                              jmp   .Lx333_46
.Lx333_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx333_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx333_51
.Lx333_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx333_47
                        cmp              al, 104;                             je    .Lx333_47
                        cmp              al, 72;                              jne   .Lx333_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx333_47
                                                                              jmp   .Lx333_48
.Lx333_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx333_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx333_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx333_51
.Lx333_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx333_49
                        cmp              dl, 80;                              je    .Lx333_53
                                                                              jmp   .Lx333_52
.Lx333_49:              cmp              dl, 80;                              je    .Lx333_52
                        cmp              cl, 5;                               je    .Lx333_53
                        cmp              dl, 5;                               je    .Lx333_53
                        cmp              cl, 3;                               jne   .Lx333_50
                        cmp              dl, 3;                               jne   .Lx333_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx333_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx333_51
                                                                              jmp   .Lx333_52
.Lx333_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx333_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx333_53
.Lx333_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx333_54
.Lx333_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx333_54
.Lx333_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx333_54:              mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_suspend_α
n183_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_suspend_α:         mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx335_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx335_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n184_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n184_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n184_suspend_β:         mov              r11, 98;                             jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3576], rax
                        lea              rdi, [rsp + 3568]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_var_ref_α
n185_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 3536], 2            # result
                        mov              dword ptr [rsp + 3540], 4
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n188_call_builtin_prolog_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3496], rax
                        lea              rdi, [rsp + 3488]
                        mov              rsi, qword ptr [rip + .Lx340_2];     jmp   .Lx340_3
.Lx340_2:               .quad            .Lx340_2_s
.Lx340_2_s:             .string          "undo"
.Lx340_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_var_ref_α
n188_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 3456], 2            # result
                        mov              dword ptr [rsp + 3460], 7
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n191_call_builtin_prolog_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "clauses"
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3416], rax
                        lea              rdi, [rsp + 3408]
                        mov              rsi, qword ptr [rip + .Lx344_2];     jmp   .Lx344_3
.Lx344_2:               .quad            .Lx344_2_s
.Lx344_2_s:             .string          "clauses"
.Lx344_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_var_ref_α
n191_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 2
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n194_call_builtin_prolog_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3336], rax
                        lea              rdi, [rsp + 3328]
                        mov              rsi, qword ptr [rip + .Lx348_2];     jmp   .Lx348_3
.Lx348_2:               .quad            .Lx348_2_s
.Lx348_2_s:             .string          "[]"
.Lx348_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n195_var_ref_α
n194_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 2
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n197_call_builtin_prolog_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "t1"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3256], rax
                        lea              rdi, [rsp + 3248]
                        mov              rsi, qword ptr [rip + .Lx352_2];     jmp   .Lx352_3
.Lx352_2:               .quad            .Lx352_2_s
.Lx352_2_s:             .string          "t1"
.Lx352_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_suspend_α
n197_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_suspend_α:         mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx354_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx354_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n198_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n198_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n198_suspend_β:         mov              r11, 112;                            jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3208], rax
                        lea              rdi, [rsp + 3200]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 4
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n202_call_builtin_prolog_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax
                        lea              rdi, [rsp + 3120]
                        mov              rsi, qword ptr [rip + .Lx359_2];     jmp   .Lx359_3
.Lx359_2:               .quad            .Lx359_2_s
.Lx359_2_s:             .string          "undo"
.Lx359_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n203_var_ref_α
n202_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 5
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n205_call_builtin_prolog_α
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        mov              rsi, qword ptr [rip + .Lx363_2];     jmp   .Lx363_3
.Lx363_2:               .quad            .Lx363_2_s
.Lx363_2_s:             .string          "error"
.Lx363_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 6
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n208_lit_string_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 1
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n209_call_builtin_prolog_α
.Lx367_0:               .quad            .Lx367_0_s
.Lx367_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2968], rax
                        lea              rdi, [rsp + 2960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_call_builtin_prolog_α
n209_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        lea              rdi, [rsp + 2880]
                        lea              r8, [rsp + 2880]
.Lx369_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx369_41
                        cmp              esi, 1;                              jne   .Lx369_55
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_55:              cmp              esi, 2;                              jne   .Lx369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx369_41
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_56:              cmp              al, 72;                              jne   .Lx369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx369_41
                        cmp              rax, r8;                             je    .Lx369_41
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_41:              lea              r9, [rsp + 2896]
.Lx369_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx369_43
                        cmp              esi, 1;                              jne   .Lx369_57
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_57:              cmp              esi, 2;                              jne   .Lx369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx369_43
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_58:              cmp              al, 72;                              jne   .Lx369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx369_43
                        cmp              rax, r9;                             je    .Lx369_43
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_43:              cmp              r8, r9;                              je    .Lx369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx369_44
                        cmp              al, 104;                             je    .Lx369_44
                        cmp              al, 72;                              jne   .Lx369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx369_44
                                                                              jmp   .Lx369_45
.Lx369_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx369_53
                        cmp              al, 104;                             je    .Lx369_53
                        cmp              al, 72;                              jne   .Lx369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx369_53
                                                                              jmp   .Lx369_46
.Lx369_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx369_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx369_51
.Lx369_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx369_47
                        cmp              al, 104;                             je    .Lx369_47
                        cmp              al, 72;                              jne   .Lx369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx369_47
                                                                              jmp   .Lx369_48
.Lx369_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx369_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx369_51
.Lx369_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx369_49
                        cmp              dl, 80;                              je    .Lx369_53
                                                                              jmp   .Lx369_52
.Lx369_49:              cmp              dl, 80;                              je    .Lx369_52
                        cmp              cl, 5;                               je    .Lx369_53
                        cmp              dl, 5;                               je    .Lx369_53
                        cmp              cl, 3;                               jne   .Lx369_50
                        cmp              dl, 3;                               jne   .Lx369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx369_51
                                                                              jmp   .Lx369_52
.Lx369_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx369_53
.Lx369_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx369_54
.Lx369_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx369_54
.Lx369_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx369_54:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_var_ref_α
n210_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n213_lit_string_α
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n214_lit_string_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 4
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n215_lit_string_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 5
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n216_lit_string_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n217_call_builtin_prolog_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_call_builtin_prolog_α
n217_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        mov              r11, 132
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_lit_string_α
n218_call_builtin_prolog_β:
                        mov              r11, 132;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 4
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n220_call_builtin_prolog_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_lit_string_α
n220_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 2
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n222_call_builtin_prolog_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              r11, 136
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2664]
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
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_call_builtin_prolog_α
n222_call_builtin_prolog_β:
                        mov              r11, 136;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
                        mov              r11, 137
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        lea              rdi, [rsp + 2416]
                        lea              r8, [rsp + 2416]
.Lx383_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx383_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx383_41
                        cmp              esi, 1;                              jne   .Lx383_55
                        mov              r8, rax;                             jmp   .Lx383_40
.Lx383_55:              cmp              esi, 2;                              jne   .Lx383_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx383_41
                        mov              r8, rax;                             jmp   .Lx383_40
.Lx383_56:              cmp              al, 72;                              jne   .Lx383_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx383_41
                        cmp              rax, r8;                             je    .Lx383_41
                        mov              r8, rax;                             jmp   .Lx383_40
.Lx383_41:              lea              r9, [rsp + 2432]
.Lx383_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx383_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx383_43
                        cmp              esi, 1;                              jne   .Lx383_57
                        mov              r9, rax;                             jmp   .Lx383_42
.Lx383_57:              cmp              esi, 2;                              jne   .Lx383_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx383_43
                        mov              r9, rax;                             jmp   .Lx383_42
.Lx383_58:              cmp              al, 72;                              jne   .Lx383_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx383_43
                        cmp              rax, r9;                             je    .Lx383_43
                        mov              r9, rax;                             jmp   .Lx383_42
.Lx383_43:              cmp              r8, r9;                              je    .Lx383_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx383_44
                        cmp              al, 104;                             je    .Lx383_44
                        cmp              al, 72;                              jne   .Lx383_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx383_44
                                                                              jmp   .Lx383_45
.Lx383_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx383_53
                        cmp              al, 104;                             je    .Lx383_53
                        cmp              al, 72;                              jne   .Lx383_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx383_53
                                                                              jmp   .Lx383_46
.Lx383_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx383_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx383_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx383_51
.Lx383_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx383_47
                        cmp              al, 104;                             je    .Lx383_47
                        cmp              al, 72;                              jne   .Lx383_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx383_47
                                                                              jmp   .Lx383_48
.Lx383_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx383_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx383_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx383_51
.Lx383_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx383_49
                        cmp              dl, 80;                              je    .Lx383_53
                                                                              jmp   .Lx383_52
.Lx383_49:              cmp              dl, 80;                              je    .Lx383_52
                        cmp              cl, 5;                               je    .Lx383_53
                        cmp              dl, 5;                               je    .Lx383_53
                        cmp              cl, 3;                               jne   .Lx383_50
                        cmp              dl, 3;                               jne   .Lx383_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx383_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx383_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx383_51
                                                                              jmp   .Lx383_52
.Lx383_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx383_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx383_53
.Lx383_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx383_54
.Lx383_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx383_54
.Lx383_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx383_54:              mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n225_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n224_suspend_α
n223_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_suspend_α:         mov              r11, 138
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx385_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx385_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n224_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n224_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n224_suspend_β:         mov              r11, 138;                            jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              r11, 139
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n226_var_ref_α
n225_call_builtin_prolog_β:
                        mov              r11, 139;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 4
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n228_call_builtin_prolog_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        lea              rdi, [rsp + 2288]
                        mov              rsi, qword ptr [rip + .Lx390_2];     jmp   .Lx390_3
.Lx390_2:               .quad            .Lx390_2_s
.Lx390_2_s:             .string          "undo"
.Lx390_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n267_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_var_ref_α
n228_call_builtin_prolog_β:
                        mov              r11, 142;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n230_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 6
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n231_call_builtin_prolog_α
.Lx393_0:               .quad            .Lx393_0_s
.Lx393_0_s:             .string          "error2"
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2216], rax
                        lea              rdi, [rsp + 2208]
                        mov              rsi, qword ptr [rip + .Lx394_2];     jmp   .Lx394_3
.Lx394_2:               .quad            .Lx394_2_s
.Lx394_2_s:             .string          "error2"
.Lx394_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n267_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                        mov              r11, 145;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 2
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n234_call_builtin_prolog_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        mov              rsi, qword ptr [rip + .Lx398_2];     jmp   .Lx398_3
.Lx398_2:               .quad            .Lx398_2_s
.Lx398_2_s:             .string          "[]"
.Lx398_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n267_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n237_lit_string_α
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 5
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n238_lit_string_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "catch"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n239_lit_string_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n240_lit_string_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n241_lit_integer_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n242_call_builtin_prolog_α
.Lx406_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n244_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_lit_string_α
n244_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n246_lit_string_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 4
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n247_lit_string_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n248_var_ref_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n249_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_call_builtin_prolog_α
n249_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_prolog_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n251_lit_string_α
n250_call_builtin_prolog_β:
                        mov              r11, 164;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n252_lit_string_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n253_call_builtin_prolog_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n254_call_builtin_prolog_α
n253_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_call_builtin_prolog_α
n254_call_builtin_prolog_β:
                        mov              r11, 168;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        mov              r11, 169
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1624], rax
                        lea              rdi, [rsp + 1616]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n256_lit_string_α
n255_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n257_lit_string_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 4
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n258_call_builtin_prolog_α
.Lx424_0:               .quad            .Lx424_0_s
.Lx424_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n259_lit_string_α
n258_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 2
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n260_lit_string_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n261_lit_integer_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n262_call_builtin_prolog_α
.Lx428_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        lea              rdi, [rsp + 1872]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_call_builtin_prolog_α
n262_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        lea              rdi, [rsp + 1952]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_call_builtin_prolog_α
n263_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
                        mov              r11, 178
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        lea              rdi, [rsp + 2032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n267_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n265_call_builtin_prolog_α
n264_call_builtin_prolog_β:
                        mov              r11, 178;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              r11, 179
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        lea              r8, [rsp + 976]
.Lx432_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx432_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx432_41
                        cmp              esi, 1;                              jne   .Lx432_55
                        mov              r8, rax;                             jmp   .Lx432_40
.Lx432_55:              cmp              esi, 2;                              jne   .Lx432_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx432_41
                        mov              r8, rax;                             jmp   .Lx432_40
.Lx432_56:              cmp              al, 72;                              jne   .Lx432_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx432_41
                        cmp              rax, r8;                             je    .Lx432_41
                        mov              r8, rax;                             jmp   .Lx432_40
.Lx432_41:              lea              r9, [rsp + 992]
.Lx432_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx432_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx432_43
                        cmp              esi, 1;                              jne   .Lx432_57
                        mov              r9, rax;                             jmp   .Lx432_42
.Lx432_57:              cmp              esi, 2;                              jne   .Lx432_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx432_43
                        mov              r9, rax;                             jmp   .Lx432_42
.Lx432_58:              cmp              al, 72;                              jne   .Lx432_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx432_43
                        cmp              rax, r9;                             je    .Lx432_43
                        mov              r9, rax;                             jmp   .Lx432_42
.Lx432_43:              cmp              r8, r9;                              je    .Lx432_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx432_44
                        cmp              al, 104;                             je    .Lx432_44
                        cmp              al, 72;                              jne   .Lx432_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx432_44
                                                                              jmp   .Lx432_45
.Lx432_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx432_53
                        cmp              al, 104;                             je    .Lx432_53
                        cmp              al, 72;                              jne   .Lx432_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx432_53
                                                                              jmp   .Lx432_46
.Lx432_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx432_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx432_51
.Lx432_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx432_47
                        cmp              al, 104;                             je    .Lx432_47
                        cmp              al, 72;                              jne   .Lx432_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx432_47
                                                                              jmp   .Lx432_48
.Lx432_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx432_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx432_51
.Lx432_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx432_49
                        cmp              dl, 80;                              je    .Lx432_53
                                                                              jmp   .Lx432_52
.Lx432_49:              cmp              dl, 80;                              je    .Lx432_52
                        cmp              cl, 5;                               je    .Lx432_53
                        cmp              dl, 5;                               je    .Lx432_53
                        cmp              cl, 3;                               jne   .Lx432_50
                        cmp              dl, 3;                               jne   .Lx432_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx432_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx432_51
                                                                              jmp   .Lx432_52
.Lx432_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx432_53
.Lx432_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx432_54
.Lx432_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx432_54
.Lx432_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx432_54:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n267_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n266_suspend_α
n265_call_builtin_prolog_β:
                        mov              r11, 179;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n266_suspend_α:         mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx434_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx434_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n266_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n266_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n266_suspend_β:         mov              r11, 180;                            jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_prolog_α:
                        mov              r11, 181
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_var_ref_α
n267_call_builtin_prolog_β:
                        mov              r11, 181;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n269_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 4
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n270_call_builtin_prolog_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
                        mov              r11, 184
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lx439_2];     jmp   .Lx439_3
.Lx439_2:               .quad            .Lx439_2_s
.Lx439_2_s:             .string          "undo"
.Lx439_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n292_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_var_ref_α
n270_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 7
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n273_call_builtin_prolog_α
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          "cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              rsi, qword ptr [rip + .Lx443_2];     jmp   .Lx443_3
.Lx443_2:               .quad            .Lx443_2_s
.Lx443_2_s:             .string          "cleanup"
.Lx443_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n292_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n274_var_ref_α
n273_call_builtin_prolog_β:
                        mov              r11, 187;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 4
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n276_call_builtin_prolog_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              rsi, qword ptr [rip + .Lx447_2];     jmp   .Lx447_3
.Lx447_2:               .quad            .Lx447_2_s
.Lx447_2_s:             .string          "fail"
.Lx447_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n292_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n279_lit_string_α
.Lx450_0:               .quad            .Lx450_0_s
.Lx450_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 2
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n280_lit_string_α
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n281_lit_string_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "once"
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n282_lit_string_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 4
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n283_lit_string_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n284_call_builtin_prolog_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_lit_string_α
n284_call_builtin_prolog_β:
                        mov              r11, 198;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 4
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n286_call_builtin_prolog_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_call_builtin_prolog_α
n286_call_builtin_prolog_β:
                        mov              r11, 200;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n288_call_builtin_prolog_α
n287_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
                        mov              r11, 202
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n289_call_builtin_prolog_α
n288_call_builtin_prolog_β:
                        mov              r11, 202;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              r11, 203
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n292_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n290_call_builtin_prolog_α
n289_call_builtin_prolog_β:
                        mov              r11, 203;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx462_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx462_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx462_41
                        cmp              esi, 1;                              jne   .Lx462_55
                        mov              r8, rax;                             jmp   .Lx462_40
.Lx462_55:              cmp              esi, 2;                              jne   .Lx462_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_41
                        mov              r8, rax;                             jmp   .Lx462_40
.Lx462_56:              cmp              al, 72;                              jne   .Lx462_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx462_41
                        cmp              rax, r8;                             je    .Lx462_41
                        mov              r8, rax;                             jmp   .Lx462_40
.Lx462_41:              lea              r9, [rsp + 192]
.Lx462_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx462_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_43
                        cmp              esi, 1;                              jne   .Lx462_57
                        mov              r9, rax;                             jmp   .Lx462_42
.Lx462_57:              cmp              esi, 2;                              jne   .Lx462_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_43
                        mov              r9, rax;                             jmp   .Lx462_42
.Lx462_58:              cmp              al, 72;                              jne   .Lx462_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_43
                        cmp              rax, r9;                             je    .Lx462_43
                        mov              r9, rax;                             jmp   .Lx462_42
.Lx462_43:              cmp              r8, r9;                              je    .Lx462_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx462_44
                        cmp              al, 104;                             je    .Lx462_44
                        cmp              al, 72;                              jne   .Lx462_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx462_44
                                                                              jmp   .Lx462_45
.Lx462_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx462_53
                        cmp              al, 104;                             je    .Lx462_53
                        cmp              al, 72;                              jne   .Lx462_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx462_53
                                                                              jmp   .Lx462_46
.Lx462_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx462_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx462_51
.Lx462_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx462_47
                        cmp              al, 104;                             je    .Lx462_47
                        cmp              al, 72;                              jne   .Lx462_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx462_47
                                                                              jmp   .Lx462_48
.Lx462_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx462_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx462_51
.Lx462_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx462_49
                        cmp              dl, 80;                              je    .Lx462_53
                                                                              jmp   .Lx462_52
.Lx462_49:              cmp              dl, 80;                              je    .Lx462_52
                        cmp              cl, 5;                               je    .Lx462_53
                        cmp              dl, 5;                               je    .Lx462_53
                        cmp              cl, 3;                               jne   .Lx462_50
                        cmp              dl, 3;                               jne   .Lx462_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx462_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx462_51
                                                                              jmp   .Lx462_52
.Lx462_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx462_53
.Lx462_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx462_54
.Lx462_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx462_54
.Lx462_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx462_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n292_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n291_suspend_α
n290_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n291_suspend_α:         mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx464_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx464_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n291_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n291_suspend_β]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_test$2F4_γ
n291_suspend_β:         mov              r11, 205;                            jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              r11, 206
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
n292_call_builtin_prolog_β:
                        mov              r11, 206;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n184_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx465_50
                        mov              qword ptr [rsp + 4768], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4768];         jmp   rax
.Lx465_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4824]
                        add              rsp, 4848;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 4832]
                        add              rsp, 4848;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_undo$2F0:
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
test_undo$2F0_α_body:
                        lea              rax, [rip + n472_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              r11, 207
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx474_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx474_101
.Lx474_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx474_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx474_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx474_101
.Lx474_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx474_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_undo$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n467_lit_string_α
n466_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   test_undo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n468_lit_string_α
.Lx475_0:               .quad            .Lx475_0_s
.Lx475_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 4
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n469_lit_string_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n470_call_builtin_prolog_α
.Lx477_0:               .quad            .Lx477_0_s
.Lx477_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
                        mov              r11, 211
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
                        cmp              al, 104;                             je    n473_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_call_proc_staged_α
n470_call_builtin_prolog_β:
                        mov              r11, 211;                            jmp   n473_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_proc_staged_α:
                        mov              r11, 212
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx480_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx480_21
.Lx480_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx480_21:              mov              rdi, qword ptr [rip + .Lx480_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx480_1
                        mov              rdi, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx480_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx480_3]
                        push             rcx
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4];               jmp   rax
.Lx480_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx480_2
.Lx480_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx480_2
.Lx480_1:               call             rt_faildescr@PLT
.Lx480_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx480_29
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
.Lx480_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n473_call_builtin_prolog_α
                                                                              jmp   n472_suspend_α
n471_call_proc_staged_β:
                        mov              r11, 212;                            jmp   n473_call_builtin_prolog_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n472_suspend_α:         mov              r11, 213
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx482_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx482_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n472_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n472_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_undo$2F0_γ
n472_suspend_β:         mov              r11, 213;                            jmp   n471_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              r11, 214
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
                        cmp              al, 104;                             je    test_undo$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_undo$2F0_ω
n473_call_builtin_prolog_β:
                        mov              r11, 214;                            jmp   test_undo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_undo$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_undo$2F0_β:
                                                                              jmp   n472_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_undo$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx483_50
                        mov              qword ptr [rsp + 256], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx483_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_undo$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F1:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 624
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F1_α_body:
                        lea              rax, [rip + n500_suspend_β]
                        mov              qword ptr [rsp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              r11, 215
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx502_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx502_101
.Lx502_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx502_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx502_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx502_101
.Lx502_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx502_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n485_var_ref_α
n484_call_builtin_prolog_β:
                        mov              r11, 215;                            jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              r11, 218
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        lea              r8, [rsp + 512]
.Lx507_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              esi, 1;                              jne   .Lx507_55
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_55:              cmp              esi, 2;                              jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_56:              cmp              al, 72;                              jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              rax, r8;                             je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_41:              lea              r9, [rsp + 528]
.Lx507_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              esi, 1;                              jne   .Lx507_57
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_57:              cmp              esi, 2;                              jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_58:              cmp              al, 72;                              jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              rax, r9;                             je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_43:              cmp              r8, r9;                              je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx507_44
                        cmp              al, 104;                             je    .Lx507_44
                        cmp              al, 72;                              jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx507_44
                                                                              jmp   .Lx507_45
.Lx507_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_53
                        cmp              al, 104;                             je    .Lx507_53
                        cmp              al, 72;                              jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_53
                                                                              jmp   .Lx507_46
.Lx507_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx507_51
.Lx507_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_47
                        cmp              al, 104;                             je    .Lx507_47
                        cmp              al, 72;                              jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_47
                                                                              jmp   .Lx507_48
.Lx507_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx507_51
.Lx507_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx507_49
                        cmp              dl, 80;                              je    .Lx507_53
                                                                              jmp   .Lx507_52
.Lx507_49:              cmp              dl, 80;                              je    .Lx507_52
                        cmp              cl, 5;                               je    .Lx507_53
                        cmp              dl, 5;                               je    .Lx507_53
                        cmp              cl, 3;                               jne   .Lx507_50
                        cmp              dl, 3;                               jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx507_51
                                                                              jmp   .Lx507_52
.Lx507_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx507_53
.Lx507_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx507_54
.Lx507_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx507_54
.Lx507_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx507_54:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n488_lit_string_α
n487_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   n494_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n489_call_builtin_prolog_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
                        mov              r11, 220
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn510:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn510]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n490_lit_string_α
n489_call_builtin_prolog_β:
                        mov              r11, 220;                            jmp   n494_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n491_var_ref_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n492_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_prolog_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n493_call_proc_staged_α
n492_call_builtin_prolog_β:
                        mov              r11, 223;                            jmp   n494_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_proc_staged_α:
                        mov              r11, 224
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx516_20
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx516_21
.Lx516_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx516_21:              mov              rdi, qword ptr [rip + .Lx516_0]
                        mov              esi, 1
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
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx516_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                                                                              jmp   n493_call_proc_staged_β
n493_call_proc_staged_β:
                        mov              r11, 224;                            jmp   n494_call_builtin_prolog_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_prolog_α:
                        mov              r11, 225
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n495_var_ref_α
n494_call_builtin_prolog_β:
                        mov              r11, 225;                            jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n497_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_prolog_α:
                        mov              r11, 228
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
.Lx522_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx522_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx522_41
                        cmp              esi, 1;                              jne   .Lx522_55
                        mov              r8, rax;                             jmp   .Lx522_40
.Lx522_55:              cmp              esi, 2;                              jne   .Lx522_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx522_41
                        mov              r8, rax;                             jmp   .Lx522_40
.Lx522_56:              cmp              al, 72;                              jne   .Lx522_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx522_41
                        cmp              rax, r8;                             je    .Lx522_41
                        mov              r8, rax;                             jmp   .Lx522_40
.Lx522_41:              lea              r9, [rsp + 224]
.Lx522_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx522_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx522_43
                        cmp              esi, 1;                              jne   .Lx522_57
                        mov              r9, rax;                             jmp   .Lx522_42
.Lx522_57:              cmp              esi, 2;                              jne   .Lx522_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx522_43
                        mov              r9, rax;                             jmp   .Lx522_42
.Lx522_58:              cmp              al, 72;                              jne   .Lx522_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx522_43
                        cmp              rax, r9;                             je    .Lx522_43
                        mov              r9, rax;                             jmp   .Lx522_42
.Lx522_43:              cmp              r8, r9;                              je    .Lx522_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx522_44
                        cmp              al, 104;                             je    .Lx522_44
                        cmp              al, 72;                              jne   .Lx522_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx522_44
                                                                              jmp   .Lx522_45
.Lx522_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx522_53
                        cmp              al, 104;                             je    .Lx522_53
                        cmp              al, 72;                              jne   .Lx522_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx522_53
                                                                              jmp   .Lx522_46
.Lx522_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx522_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx522_51
.Lx522_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx522_47
                        cmp              al, 104;                             je    .Lx522_47
                        cmp              al, 72;                              jne   .Lx522_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx522_47
                                                                              jmp   .Lx522_48
.Lx522_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx522_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx522_51
.Lx522_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx522_49
                        cmp              dl, 80;                              je    .Lx522_53
                                                                              jmp   .Lx522_52
.Lx522_49:              cmp              dl, 80;                              je    .Lx522_52
                        cmp              cl, 5;                               je    .Lx522_53
                        cmp              dl, 5;                               je    .Lx522_53
                        cmp              cl, 3;                               jne   .Lx522_50
                        cmp              dl, 3;                               jne   .Lx522_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx522_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx522_51
                                                                              jmp   .Lx522_52
.Lx522_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx522_53
.Lx522_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx522_54
.Lx522_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx522_54
.Lx522_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx522_54:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n501_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n498_lit_integer_α
n497_call_builtin_prolog_β:
                        mov              r11, 228;                            jmp   n501_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n499_call_proc_staged_α
.Lx523_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n499_call_proc_staged_α:
                        mov              r11, 230
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx525_21
.Lx525_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx525_21:              lea              rax, [rip + .Lx525_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx525_1
                        lea              rcx, [rip + .Lx525_3]
                        lea              rdx, [rip + .Lx525_4];               jmp   rax
.Lx525_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx525_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx525_2
.Lx525_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx525_2
.Lx525_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx525_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx525_2
.Lx525_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx525_2
.Lx525_1:               call             rt_faildescr@PLT
.Lx525_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx525_29
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
.Lx525_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n500_suspend_α
                                                                              jmp   n501_call_builtin_prolog_α
n499_call_proc_staged_β:
                        mov              r11, 230
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n500_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 0
                        mov              r8d, 128
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
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n500_suspend_α
                        lea              r8, [rip + .Lx525_7]
                        push             r8
                        lea              rcx, [rip + .Lx525_3]
                        lea              rdx, [rip + .Lx525_4];               jmp   rax
.Lx525_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n500_suspend_α
                                                                              jmp   n501_call_builtin_prolog_α
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n500_suspend_α:         mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx527_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx527_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n500_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n500_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F1_γ
n500_suspend_β:         mov              r11, 231;                            jmp   n501_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_prolog_α:
                        mov              r11, 232
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
n501_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_β:
                                                                              jmp   n500_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx528_50
                        mov              qword ptr [rsp + 576], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx528_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 632]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 640]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__ok$2F0:
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
ok$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              r11, 233
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx533_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx533_101
.Lx533_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx533_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx533_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx533_101
.Lx533_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx533_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    ok$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n530_move_label_α
n529_call_builtin_prolog_β:
                        mov              r11, 233;                            jmp   ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_move_label_α:      mov              r11, 234
                        lea              rax, [rip + n532_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   ok$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n531_disjunction_α:     mov              r11, 235
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    ok$2F0_ω
                                                                              jmp   rax
n531_disjunction_β:     mov              r11, 235;                            jmp   ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_prolog_α:
                        mov              r11, 236
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
                        cmp              al, 104;                             je    ok$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   ok$2F0_ω
n532_call_builtin_prolog_β:
                        mov              r11, 236;                            jmp   ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
ok$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ok$2F0_β:
                                                                              jmp   n531_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
ok$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ok$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ok$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx539_2]
                        lea              rdx, [rip + .Lx539_3];               jmp   FN__ok$2F0
.Lx539_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx539_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_4$2F0:
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
pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n543_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n540_call_builtin_prolog_α:
                        mov              r11, 237
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx545_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx545_101
.Lx545_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx545_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx545_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx545_101
.Lx545_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx545_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n541_lit_string_α
n540_call_builtin_prolog_β:
                        mov              r11, 237;                            jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n542_call_proc_staged_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_proc_staged_α:
                        mov              r11, 239
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx548_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx548_21
.Lx548_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx548_21:              mov              rdi, qword ptr [rip + .Lx548_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx548_1
                        mov              rdi, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx548_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx548_3]
                        push             rcx
                        lea              rcx, [rip + .Lx548_3]
                        lea              rdx, [rip + .Lx548_4];               jmp   rax
.Lx548_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx548_2
.Lx548_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx548_2
.Lx548_1:               call             rt_faildescr@PLT
.Lx548_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx548_29
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
.Lx548_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n544_call_builtin_prolog_α
                                                                              jmp   n543_suspend_α
n542_call_proc_staged_β:
                        mov              r11, 239;                            jmp   n544_call_builtin_prolog_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n543_suspend_α:         mov              r11, 240
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx550_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx550_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n543_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n543_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n543_suspend_β:         mov              r11, 240;                            jmp   n542_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n544_call_builtin_prolog_α:
                        mov              r11, 241
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
n544_call_builtin_prolog_β:
                        mov              r11, 241;                            jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n543_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx551_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx551_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_ω:
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
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n552_call_builtin_prolog_α:
                        mov              r11, 242
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx557_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx557_101
.Lx557_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx557_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx557_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx557_101
.Lx557_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx557_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n553_lit_string_α
n552_call_builtin_prolog_β:
                        mov              r11, 242;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n554_call_proc_staged_α
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n554_call_proc_staged_α:
                        mov              r11, 244
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx560_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx560_21
.Lx560_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx560_21:              mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx560_1
                        mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx560_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx560_3]
                        push             rcx
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4];               jmp   rax
.Lx560_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx560_2
.Lx560_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx560_2
.Lx560_1:               call             rt_faildescr@PLT
.Lx560_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx560_29
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
.Lx560_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n556_call_builtin_prolog_α
                                                                              jmp   n555_suspend_α
n554_call_proc_staged_β:
                        mov              r11, 244;                            jmp   n556_call_builtin_prolog_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n555_suspend_α:         mov              r11, 245
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx562_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx562_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n555_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n555_suspend_β:         mov              r11, 245;                            jmp   n554_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              r11, 246
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
n556_call_builtin_prolog_β:
                        mov              r11, 246;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n555_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx563_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx563_50:              mov              rdi, rax
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
                        lea              rax, [rip + n574_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_call_builtin_prolog_α:
                        mov              r11, 247
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx576_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx576_101
.Lx576_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx576_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx576_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx576_101
.Lx576_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx576_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n565_lit_string_α
n564_call_builtin_prolog_β:
                        mov              r11, 247;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 9
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n566_lit_string_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "test_undo"
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n567_lit_string_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n568_lit_string_α
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 9
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n569_lit_integer_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "test_undo"
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_integer_α:     mov              r11, 252
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n570_call_builtin_prolog_α
.Lx581_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_prolog_α:
                        mov              r11, 253
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n571_lit_string_α
n570_call_builtin_prolog_β:
                        mov              r11, 253;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n572_call_builtin_prolog_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_prolog_α:
                        mov              r11, 255
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
                        cmp              al, 104;                             je    n575_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n573_call_proc_staged_α
n572_call_builtin_prolog_β:
                        mov              r11, 255;                            jmp   n575_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        mov              r11, 256
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx586_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx586_21
.Lx586_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx586_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx586_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx586_23
.Lx586_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx586_23:              mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx586_1
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx586_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx586_3]
                        push             rcx
                        lea              rcx, [rip + .Lx586_3]
                        lea              rdx, [rip + .Lx586_4];               jmp   rax
.Lx586_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx586_2
.Lx586_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx586_2
.Lx586_1:               call             rt_faildescr@PLT
.Lx586_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx586_29
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
.Lx586_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n575_call_builtin_prolog_α
                                                                              jmp   n574_suspend_α
n573_call_proc_staged_β:
                        mov              r11, 256;                            jmp   n575_call_builtin_prolog_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n574_suspend_α:         mov              r11, 257
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx588_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx588_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n574_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n574_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n574_suspend_β:         mov              r11, 257;                            jmp   n573_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n575_call_builtin_prolog_α:
                        mov              r11, 258
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
n575_call_builtin_prolog_β:
                        mov              r11, 258;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n574_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx589_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx589_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
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
                        lea              rax, [rip + n596_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_prolog_α:
                        mov              r11, 259
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx598_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx598_101
.Lx598_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx598_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx598_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx598_101
.Lx598_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx598_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n591_lit_string_α
n590_call_builtin_prolog_β:
                        mov              r11, 259;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n592_lit_string_α
.Lx599_0:               .quad            .Lx599_0_s
.Lx599_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n593_lit_integer_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n594_call_builtin_prolog_α
.Lx601_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              r11, 263
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
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n595_call_proc_staged_α
n594_call_builtin_prolog_β:
                        mov              r11, 263;                            jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_call_proc_staged_α:
                        mov              r11, 264
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx604_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx604_21
.Lx604_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx604_21:              mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx604_1
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx604_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx604_3]
                        push             rcx
                        lea              rcx, [rip + .Lx604_3]
                        lea              rdx, [rip + .Lx604_4];               jmp   rax
.Lx604_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx604_2
.Lx604_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx604_2
.Lx604_1:               call             rt_faildescr@PLT
.Lx604_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx604_29
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
.Lx604_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n597_call_builtin_prolog_α
                                                                              jmp   n596_suspend_α
n595_call_proc_staged_β:
                        mov              r11, 264;                            jmp   n597_call_builtin_prolog_α
.Lx604_0:               .quad            .Lx604_0_s
.Lx604_0_s:             .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n596_suspend_α:         mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx606_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx606_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n596_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n596_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n596_suspend_β:         mov              r11, 265;                            jmp   n595_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              r11, 266
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
n597_call_builtin_prolog_β:
                        mov              r11, 266;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n596_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx607_50
                        mov              qword ptr [rsp + 256], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx607_50:              mov              rdi, rax
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
                        lea              rax, [rip + n613_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n608_call_builtin_prolog_α:
                        mov              r11, 267
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx615_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx615_101
.Lx615_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx615_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx615_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx615_101
.Lx615_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx615_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n609_lit_string_α
n608_call_builtin_prolog_β:
                        mov              r11, 267;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n610_lit_string_α
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n611_call_builtin_prolog_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n611_call_builtin_prolog_α:
                        mov              r11, 270
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
                        cmp              al, 104;                             je    n614_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n612_call_proc_staged_α
n611_call_builtin_prolog_β:
                        mov              r11, 270;                            jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_proc_staged_α:
                        mov              r11, 271
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx620_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx620_21
.Lx620_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx620_21:              mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx620_1
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx620_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx620_3]
                        push             rcx
                        lea              rcx, [rip + .Lx620_3]
                        lea              rdx, [rip + .Lx620_4];               jmp   rax
.Lx620_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx620_2
.Lx620_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx620_2
.Lx620_1:               call             rt_faildescr@PLT
.Lx620_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx620_29
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
.Lx620_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n614_call_builtin_prolog_α
                                                                              jmp   n613_suspend_α
n612_call_proc_staged_β:
                        mov              r11, 271;                            jmp   n614_call_builtin_prolog_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n613_suspend_α:         mov              r11, 272
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx622_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx622_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n613_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n613_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n613_suspend_β:         mov              r11, 272;                            jmp   n612_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n614_call_builtin_prolog_α:
                        mov              r11, 273
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
n614_call_builtin_prolog_β:
                        mov              r11, 273;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n613_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx623_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx623_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__t1$2F0:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 448
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
t1$2F0_α_body:
                        lea              rax, [rip + n634_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n624_call_builtin_prolog_α:
                        mov              r11, 274
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx636_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx636_101
.Lx636_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx636_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx636_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx636_101
.Lx636_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx636_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    t1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n625_lit_string_α
n624_call_builtin_prolog_β:
                        mov              r11, 274;                            jmp   t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 8
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n626_call_builtin_prolog_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_prolog_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn639:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn639]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n631_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n627_lit_string_α
n626_call_builtin_prolog_β:
                        mov              r11, 276;                            jmp   n631_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 5
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n628_var_ref_α
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n629_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_prolog_α:
                        mov              r11, 279
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n631_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n630_call_proc_staged_α
n629_call_builtin_prolog_β:
                        mov              r11, 279;                            jmp   n631_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n630_call_proc_staged_α:
                        mov              r11, 280
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx645_20
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx645_21
.Lx645_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx645_21:              mov              rdi, qword ptr [rip + .Lx645_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx645_1
                        mov              rdi, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx645_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx645_3]
                        push             rcx
                        lea              rcx, [rip + .Lx645_3]
                        lea              rdx, [rip + .Lx645_4];               jmp   rax
.Lx645_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx645_2
.Lx645_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx645_2
.Lx645_1:               call             rt_faildescr@PLT
.Lx645_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx645_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx645_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n631_call_builtin_prolog_α
                                                                              jmp   n630_call_proc_staged_β
n630_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n631_call_builtin_prolog_α
.Lx645_0:               .quad            .Lx645_0_s
.Lx645_0_s:             .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n631_call_builtin_prolog_α:
                        mov              r11, 281
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    t1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n632_lit_integer_α
n631_call_builtin_prolog_β:
                        mov              r11, 281;                            jmp   t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n633_call_proc_staged_α
.Lx647_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        mov              r11, 283
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx649_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx649_21
.Lx649_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx649_21:              lea              rax, [rip + .Lx649_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx649_1
                        lea              rcx, [rip + .Lx649_3]
                        lea              rdx, [rip + .Lx649_4];               jmp   rax
.Lx649_3:               mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx649_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx649_2
.Lx649_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx649_2
.Lx649_4:               mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx649_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx649_2
.Lx649_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx649_2
.Lx649_1:               call             rt_faildescr@PLT
.Lx649_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx649_29
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
.Lx649_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n634_suspend_α
                                                                              jmp   n635_call_builtin_prolog_α
n633_call_proc_staged_β:
                        mov              r11, 283
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n634_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              ecx, 0
                        mov              r8d, 128
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
                        test             rax, rax;                            je    n634_suspend_α
                        lea              r8, [rip + .Lx649_7]
                        push             r8
                        lea              rcx, [rip + .Lx649_3]
                        lea              rdx, [rip + .Lx649_4];               jmp   rax
.Lx649_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n634_suspend_α
                                                                              jmp   n635_call_builtin_prolog_α
.Lx649_0:               .quad            .Lx649_0_s
.Lx649_0_s:             .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n634_suspend_α:         mov              r11, 284
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx651_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx651_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n634_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n634_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   t1$2F0_γ
n634_suspend_β:         mov              r11, 284;                            jmp   n635_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_prolog_α:
                        mov              r11, 285
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
                        cmp              al, 104;                             je    t1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   t1$2F0_ω
n635_call_builtin_prolog_β:
                        mov              r11, 285;                            jmp   t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
t1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
t1$2F0_β:
                                                                              jmp   n634_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
t1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx652_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx652_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 456]
                        add              rsp, 480;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
t1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 464]
                        add              rsp, 480;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__a$2F1:
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
a$2F1_α_body:
                        lea              rax, [rip + n656_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n654_var_ref_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n655_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n655_call_builtin_gen_α:
                        mov              r11, 288
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 80], 0
.Lx660_60:              .section         .rodata
.Lbynamegenfn288:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn288]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        lea              rcx, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    a$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n656_suspend_α
n655_call_builtin_gen_β:
                        mov              r11, 288;                            jmp   .Lx660_60
#-----------------------------------------------------------------------------------------------------------------------
n656_suspend_α:         mov              r11, 289
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx662_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx662_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n656_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n656_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   a$2F1_γ
n656_suspend_β:         mov              r11, 289;                            jmp   n655_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_β:
                                                                              jmp   n655_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx662_50
                        mov              qword ptr [rsp + 128], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx662_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
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
n663_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n664_call_proc_staged_α
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n664_call_proc_staged_α:
                        mov              r11, 291
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx667_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx667_21
.Lx667_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx667_21:              mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx667_1
                        mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx667_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx667_3]
                        push             rcx
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4];               jmp   rax
.Lx667_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx667_2
.Lx667_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx667_2
.Lx667_1:               call             rt_faildescr@PLT
.Lx667_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx667_29
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
.Lx667_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n664_call_proc_staged_β:
                        mov              r11, 291;                            jmp   main_ω
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "end_tests/1"
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
                        .long            992
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__test$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            688
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$disj1/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__$disj1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            304
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
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            4800
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "test_undo/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__test_undo$2F0
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$disj0/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__$disj0$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "ok/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__ok$2F0
                        .quad            ok$2F0_dcα
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__pj_dir_4$2F0
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
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
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
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
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
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
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
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
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
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "t1/0"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__t1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            432
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "a/1"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__a$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
