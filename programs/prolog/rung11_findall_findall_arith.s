                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$fa0$2F1:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$fa0$2F1_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx13_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx13_101
.Lx13_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx13_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx13_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx13_101
.Lx13_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx13_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $fa0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   $fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx18_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx18_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx18_41
                        cmp              esi, 1;                              jne   .Lx18_55
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_55:               cmp              esi, 2;                              jne   .Lx18_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx18_41
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_56:               cmp              al, 72;                              jne   .Lx18_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx18_41
                        cmp              rax, r8;                             je    .Lx18_41
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_41:               lea              r9, [rsp + 368]
.Lx18_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx18_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx18_43
                        cmp              esi, 1;                              jne   .Lx18_57
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_57:               cmp              esi, 2;                              jne   .Lx18_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx18_43
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_58:               cmp              al, 72;                              jne   .Lx18_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx18_43
                        cmp              rax, r9;                             je    .Lx18_43
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_43:               cmp              r8, r9;                              je    .Lx18_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx18_44
                        cmp              al, 104;                             je    .Lx18_44
                        cmp              al, 72;                              jne   .Lx18_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx18_44
                                                                              jmp   .Lx18_45
.Lx18_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx18_53
                        cmp              al, 104;                             je    .Lx18_53
                        cmp              al, 72;                              jne   .Lx18_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx18_53
                                                                              jmp   .Lx18_46
.Lx18_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx18_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx18_51
.Lx18_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx18_47
                        cmp              al, 104;                             je    .Lx18_47
                        cmp              al, 72;                              jne   .Lx18_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx18_47
                                                                              jmp   .Lx18_48
.Lx18_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx18_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx18_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx18_51
.Lx18_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx18_49
                        cmp              dl, 80;                              je    .Lx18_53
                                                                              jmp   .Lx18_52
.Lx18_49:               cmp              dl, 80;                              je    .Lx18_52
                        cmp              cl, 5;                               je    .Lx18_53
                        cmp              dl, 5;                               je    .Lx18_53
                        cmp              cl, 3;                               jne   .Lx18_50
                        cmp              dl, 3;                               jne   .Lx18_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx18_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx18_51
                                                                              jmp   .Lx18_52
.Lx18_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx18_53
.Lx18_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx18_54
.Lx18_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx18_54
.Lx18_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx18_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx22_20
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx22_21
.Lx22_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx22_21:               lea              rax, [rip + .Lx22_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx22_1
                        lea              rcx, [rip + .Lx22_3]
                        lea              rdx, [rip + .Lx22_4];                jmp   rax
.Lx22_3:                mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx22_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx22_2
.Lx22_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx22_2
.Lx22_4:                mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx22_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx22_2
.Lx22_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx22_2
.Lx22_1:                call             rt_faildescr@PLT
.Lx22_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx22_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx22_29:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                                                                              jmp   n6_var_ref_α
n5_call_proc_staged_β:  mov              r11, 6
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 288], 0
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n12_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              ecx, 32
                        mov              r8d, 784
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n12_call_builtin_prolog_α
                        lea              r8, [rip + .Lx22_7]
                        push             r8
                        lea              rcx, [rip + .Lx22_3]
                        lea              rdx, [rip + .Lx22_4];                jmp   rax
.Lx22_7:                add              rsp, 8
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                                                                              jmp   n6_var_ref_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 232], rax;          jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 248], rax;          jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n5_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx32_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx32_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n11_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $fa0$2F1_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
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
                        cmp              al, 104;                             je    $fa0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $fa0$2F1_ω
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   $fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx33_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx33_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__num$2F1:
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rcx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 816
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
num$2F1_α_body:
                        lea              rax, [rip + n42_suspend_β]
                        mov              qword ptr [rsp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 14
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx62_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx62_101
.Lx62_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx62_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx62_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx62_101
.Lx62_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx62_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n37_lit_integer_α
.Lx65_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n38_call_builtin_prolog_α
.Lx66_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx67_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx67_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx67_111
                        cmp              esi, 1;                              jne   .Lx67_112
                        mov              r8, rax;                             jmp   .Lx67_110
.Lx67_112:              cmp              esi, 2;                              jne   .Lx67_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx67_111
                        mov              r8, rax;                             jmp   .Lx67_110
.Lx67_113:              cmp              al, 72;                              jne   .Lx67_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx67_111
                        cmp              rax, r8;                             je    .Lx67_111
                        mov              r8, rax;                             jmp   .Lx67_110
.Lx67_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx67_114
                        cmp              al, 104;                             je    .Lx67_114
                        cmp              al, 72;                              jne   .Lx67_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx67_114
                                                                              jmp   .Lx67_118
.Lx67_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx67_115
                        cmp              al, 3;                               jne   .Lx67_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx67_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx67_115
                                                                              jmp   .Lx67_114
.Lx67_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx67_117
.Lx67_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx67_117
.Lx67_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx67_117:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n44_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_var_ref_α
n38_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n41_call_builtin_prolog_α
.Lx70_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_suspend_α
n41_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_suspend_α:          mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx73_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784];          jmp   rax
.Lx73_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n42_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n42_suspend_β]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n42_suspend_β:          mov              r11, 22;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n46_lit_integer_α
.Lx77_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n47_call_builtin_prolog_α
.Lx78_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx79_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx79_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx79_111
                        cmp              esi, 1;                              jne   .Lx79_112
                        mov              r8, rax;                             jmp   .Lx79_110
.Lx79_112:              cmp              esi, 2;                              jne   .Lx79_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx79_111
                        mov              r8, rax;                             jmp   .Lx79_110
.Lx79_113:              cmp              al, 72;                              jne   .Lx79_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx79_111
                        cmp              rax, r8;                             je    .Lx79_111
                        mov              r8, rax;                             jmp   .Lx79_110
.Lx79_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx79_114
                        cmp              al, 104;                             je    .Lx79_114
                        cmp              al, 72;                              jne   .Lx79_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx79_114
                                                                              jmp   .Lx79_118
.Lx79_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx79_115
                        cmp              al, 3;                               jne   .Lx79_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx79_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx79_115
                                                                              jmp   .Lx79_114
.Lx79_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx79_117
.Lx79_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx79_117
.Lx79_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx79_117:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n53_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n50_call_builtin_prolog_α
.Lx82_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n52_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_suspend_α
n50_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_suspend_α:          mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx85_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784];          jmp   rax
.Lx85_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n51_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n51_suspend_β]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n51_suspend_β:          mov              r11, 31;                             jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_ref_α
n52_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n55_lit_integer_α
.Lx89_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n56_call_builtin_prolog_α
.Lx90_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
.Lx91_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx91_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_111
                        cmp              esi, 1;                              jne   .Lx91_112
                        mov              r8, rax;                             jmp   .Lx91_110
.Lx91_112:              cmp              esi, 2;                              jne   .Lx91_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_111
                        mov              r8, rax;                             jmp   .Lx91_110
.Lx91_113:              cmp              al, 72;                              jne   .Lx91_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_111
                        cmp              rax, r8;                             je    .Lx91_111
                        mov              r8, rax;                             jmp   .Lx91_110
.Lx91_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx91_114
                        cmp              al, 104;                             je    .Lx91_114
                        cmp              al, 72;                              jne   .Lx91_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx91_114
                                                                              jmp   .Lx91_118
.Lx91_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx91_115
                        cmp              al, 3;                               jne   .Lx91_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx91_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx91_115
                                                                              jmp   .Lx91_114
.Lx91_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx91_117
.Lx91_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx91_117
.Lx91_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_117:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n59_call_builtin_prolog_α
.Lx94_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_suspend_α
n59_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_suspend_α:          mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx97_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784];          jmp   rax
.Lx97_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n60_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n60_suspend_β]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n60_suspend_β:          mov              r11, 40;                             jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 41
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
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   num$2F1_ω
n61_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_β:
                                                                              jmp   n42_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx98_50
                        mov              qword ptr [rsp + 784], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784];          jmp   rax
.Lx98_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 824]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_ω:
                        mov              rcx, qword ptr [rsp + 832]
                        add              rsp, 848;                            jmp   rcx
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
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 528
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 42
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx115_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx115_101
.Lx115_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx115_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx115_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx115_101
.Lx115_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx115_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_call_builtin_prolog_α
n99_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              r11, 43
                        .section         .rodata
.Lrkfn117:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 208]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_var_ref_α
n100_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n102_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              r11, 45
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx121_20
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx121_21
.Lx121_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx121_21:              lea              rax, [rip + .Lx121_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx121_1
                        lea              rcx, [rip + .Lx121_3]
                        lea              rdx, [rip + .Lx121_4];               jmp   rax
.Lx121_3:               mov              qword ptr [rsp + 440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx121_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx121_2
.Lx121_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx121_2
.Lx121_4:               mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx121_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx121_2
.Lx121_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx121_2
.Lx121_1:               call             rt_faildescr@PLT
.Lx121_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx121_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx121_29:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n103_var_α
n102_call_proc_staged_β:
                        mov              r11, 45
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 432], 0
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n105_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              ecx, 32
                        mov              r8d, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n105_call_builtin_prolog_α
                        lea              r8, [rip + .Lx121_7]
                        push             r8
                        lea              rcx, [rip + .Lx121_3]
                        lea              rdx, [rip + .Lx121_4];               jmp   rax
.Lx121_7:               add              rsp, 8
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n103_var_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 392], rax;          jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn125:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_call_proc_staged_β
n104_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn127:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n107_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        lea              r8, [rsp + 288]
.Lx130_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx130_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx130_41
                        cmp              esi, 1;                              jne   .Lx130_55
                        mov              r8, rax;                             jmp   .Lx130_40
.Lx130_55:              cmp              esi, 2;                              jne   .Lx130_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx130_41
                        mov              r8, rax;                             jmp   .Lx130_40
.Lx130_56:              cmp              al, 72;                              jne   .Lx130_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx130_41
                        cmp              rax, r8;                             je    .Lx130_41
                        mov              r8, rax;                             jmp   .Lx130_40
.Lx130_41:              lea              r9, [rsp + 304]
.Lx130_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx130_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx130_43
                        cmp              esi, 1;                              jne   .Lx130_57
                        mov              r9, rax;                             jmp   .Lx130_42
.Lx130_57:              cmp              esi, 2;                              jne   .Lx130_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx130_43
                        mov              r9, rax;                             jmp   .Lx130_42
.Lx130_58:              cmp              al, 72;                              jne   .Lx130_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx130_43
                        cmp              rax, r9;                             je    .Lx130_43
                        mov              r9, rax;                             jmp   .Lx130_42
.Lx130_43:              cmp              r8, r9;                              je    .Lx130_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx130_44
                        cmp              al, 104;                             je    .Lx130_44
                        cmp              al, 72;                              jne   .Lx130_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx130_44
                                                                              jmp   .Lx130_45
.Lx130_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx130_53
                        cmp              al, 104;                             je    .Lx130_53
                        cmp              al, 72;                              jne   .Lx130_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx130_53
                                                                              jmp   .Lx130_46
.Lx130_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx130_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx130_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx130_51
.Lx130_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx130_47
                        cmp              al, 104;                             je    .Lx130_47
                        cmp              al, 72;                              jne   .Lx130_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx130_47
                                                                              jmp   .Lx130_48
.Lx130_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx130_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx130_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx130_51
.Lx130_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx130_49
                        cmp              dl, 80;                              je    .Lx130_53
                                                                              jmp   .Lx130_52
.Lx130_49:              cmp              dl, 80;                              je    .Lx130_52
                        cmp              cl, 5;                               je    .Lx130_53
                        cmp              dl, 5;                               je    .Lx130_53
                        cmp              cl, 3;                               jne   .Lx130_50
                        cmp              dl, 3;                               jne   .Lx130_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx130_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx130_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx130_51
                                                                              jmp   .Lx130_52
.Lx130_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx130_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx130_53
.Lx130_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx130_54
.Lx130_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx130_54
.Lx130_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx130_54:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_var_α
n107_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              r11, 51
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 184], rax;          jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn134:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_lit_string_α
n109_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n111_call_builtin_prolog_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn137:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_move_label_α
n111_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_move_label_α:      mov              r11, 55
                        lea              rax, [rip + n114_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n113_disjunction_α:     mov              r11, 56
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n113_disjunction_β:     mov              r11, 56;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 57
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n114_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n113_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 536]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 544]
                        add              rsp, 560;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$fa0/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__$fa0$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            464
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "num/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__num$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            800
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
