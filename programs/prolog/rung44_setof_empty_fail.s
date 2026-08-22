                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$fa0$2F1:
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rcx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rsp
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 384
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$fa0$2F1_α_body:
                        lea              rax, [rip + n9_suspend_β]
                        mov              qword ptr [rsp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx11_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx11_101
.Lx11_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx11_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx11_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx11_101
.Lx11_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx11_101:              mov              qword ptr [rsp + 32], rax
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
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        lea              r8, [rsp + 272]
.Lx16_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx16_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx16_41
                        cmp              esi, 1;                              jne   .Lx16_55
                        mov              r8, rax;                             jmp   .Lx16_40
.Lx16_55:               cmp              esi, 2;                              jne   .Lx16_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx16_41
                        mov              r8, rax;                             jmp   .Lx16_40
.Lx16_56:               cmp              al, 72;                              jne   .Lx16_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx16_41
                        cmp              rax, r8;                             je    .Lx16_41
                        mov              r8, rax;                             jmp   .Lx16_40
.Lx16_41:               lea              r9, [rsp + 288]
.Lx16_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx16_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx16_43
                        cmp              esi, 1;                              jne   .Lx16_57
                        mov              r9, rax;                             jmp   .Lx16_42
.Lx16_57:               cmp              esi, 2;                              jne   .Lx16_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx16_43
                        mov              r9, rax;                             jmp   .Lx16_42
.Lx16_58:               cmp              al, 72;                              jne   .Lx16_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx16_43
                        cmp              rax, r9;                             je    .Lx16_43
                        mov              r9, rax;                             jmp   .Lx16_42
.Lx16_43:               cmp              r8, r9;                              je    .Lx16_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx16_44
                        cmp              al, 104;                             je    .Lx16_44
                        cmp              al, 72;                              jne   .Lx16_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx16_44
                                                                              jmp   .Lx16_45
.Lx16_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx16_53
                        cmp              al, 104;                             je    .Lx16_53
                        cmp              al, 72;                              jne   .Lx16_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx16_53
                                                                              jmp   .Lx16_46
.Lx16_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx16_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx16_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx16_51
.Lx16_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx16_47
                        cmp              al, 104;                             je    .Lx16_47
                        cmp              al, 72;                              jne   .Lx16_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx16_47
                                                                              jmp   .Lx16_48
.Lx16_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx16_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx16_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx16_51
.Lx16_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx16_49
                        cmp              dl, 80;                              je    .Lx16_53
                                                                              jmp   .Lx16_52
.Lx16_49:               cmp              dl, 80;                              je    .Lx16_52
                        cmp              cl, 5;                               je    .Lx16_53
                        cmp              dl, 5;                               je    .Lx16_53
                        cmp              cl, 3;                               jne   .Lx16_50
                        cmp              dl, 3;                               jne   .Lx16_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx16_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx16_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx16_51
                                                                              jmp   .Lx16_52
.Lx16_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx16_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx16_53
.Lx16_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx16_54
.Lx16_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx16_54
.Lx16_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx16_54:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n10_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 352]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        mov              qword ptr [rsp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx20_20
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx20_21
.Lx20_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx20_21:               lea              rax, [rip + .Lx20_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx20_1
                        lea              rcx, [rip + .Lx20_3]
                        lea              rdx, [rip + .Lx20_4];                jmp   rax
.Lx20_3:                mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx20_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx20_2
.Lx20_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx20_2
.Lx20_4:                mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx20_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx20_2
.Lx20_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx20_2
.Lx20_1:                call             rt_faildescr@PLT
.Lx20_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx20_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx20_29:               mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n10_call_builtin_prolog_α
                                                                              jmp   n6_var_α
n5_call_proc_staged_β:  mov              r11, 6
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 208], 0
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n10_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              ecx, 32
                        mov              r8d, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
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
                        test             rax, rax;                            je    n10_call_builtin_prolog_α
                        lea              r11, [rip + .Lx20_7]
                        push             r11
                        lea              rcx, [rip + .Lx20_3]
                        lea              rdx, [rip + .Lx20_4];                jmp   rax
.Lx20_7:                add              rsp, 8
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n10_call_builtin_prolog_α
                                                                              jmp   n6_var_α
.Lx20_0:                .quad            .Lx20_0_s
.Lx20_0_s:              .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 152], rax;          jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n8_call_builtin_prolog_α
.Lx23_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
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
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n5_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_suspend_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n9_suspend_α:           mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx26_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336];          jmp   rax
.Lx26_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n9_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n9_suspend_β]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $fa0$2F1_γ
n9_suspend_β:           mov              r11, 10;                             jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
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
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   $fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_β:
                                                                              jmp   n9_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx27_50
                        mov              qword ptr [rsp + 336], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336];          jmp   rax
.Lx27_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 392]
                        add              rsp, 416;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 400]
                        add              rsp, 416;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__num$2F1:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
num$2F1_α_body:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 12
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx47_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx47_101
.Lx47_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx47_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx47_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx47_101
.Lx47_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx47_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    num$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n31_lit_integer_α
.Lx50_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n32_call_builtin_prolog_α
.Lx51_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 16
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
.Lx52_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx52_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx52_111
                        cmp              esi, 1;                              jne   .Lx52_112
                        mov              r8, rax;                             jmp   .Lx52_110
.Lx52_112:              cmp              esi, 2;                              jne   .Lx52_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx52_111
                        mov              r8, rax;                             jmp   .Lx52_110
.Lx52_113:              cmp              al, 72;                              jne   .Lx52_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx52_111
                        cmp              rax, r8;                             je    .Lx52_111
                        mov              r8, rax;                             jmp   .Lx52_110
.Lx52_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx52_114
                        cmp              al, 104;                             je    .Lx52_114
                        cmp              al, 72;                              jne   .Lx52_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx52_114
                                                                              jmp   .Lx52_118
.Lx52_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx52_115
                        cmp              al, 3;                               jne   .Lx52_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx52_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx52_115
                                                                              jmp   .Lx52_114
.Lx52_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx52_117
.Lx52_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx52_117
.Lx52_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx52_117:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n38_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n35_call_builtin_prolog_α
.Lx55_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n37_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_suspend_α
n35_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:          mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx58_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lx58_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n36_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n36_suspend_β:          mov              r11, 20;                             jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 21
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_var_ref_α
n37_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n40_lit_integer_α
.Lx62_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n41_call_builtin_prolog_α
.Lx63_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 25
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
.Lx64_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx64_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_111
                        cmp              esi, 1;                              jne   .Lx64_112
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_112:              cmp              esi, 2;                              jne   .Lx64_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_111
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_113:              cmp              al, 72;                              jne   .Lx64_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_111
                        cmp              rax, r8;                             je    .Lx64_111
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx64_114
                        cmp              al, 104;                             je    .Lx64_114
                        cmp              al, 72;                              jne   .Lx64_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx64_114
                                                                              jmp   .Lx64_118
.Lx64_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx64_115
                        cmp              al, 3;                               jne   .Lx64_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx64_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx64_115
                                                                              jmp   .Lx64_114
.Lx64_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx64_117
.Lx64_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx64_117
.Lx64_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx64_117:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n46_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_var_ref_α
n41_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n44_call_builtin_prolog_α
.Lx67_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 28
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
                        cmp              al, 104;                             je    n46_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_suspend_α
n44_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_suspend_α:          mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx70_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lx70_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n45_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n45_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   num$2F1_γ
n45_suspend_β:          mov              r11, 29;                             jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 30
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
n46_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_β:
                                                                              jmp   n36_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx71_50
                        mov              qword ptr [rsp + 544], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lx71_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 584]
                        add              rsp, 608;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
num$2F1_ω:
                        mov              rcx, qword ptr [rsp + 592]
                        add              rsp, 608;                            jmp   rcx
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
                        sub              rsp, 2608
                        mov              qword ptr [rsp + 2584], rcx
                        mov              qword ptr [rsp + 2592], rdx
                        mov              qword ptr [rsp + 2600], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2576
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              r11, 31
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx151_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx151_101
.Lx151_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx151_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx151_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx151_101
.Lx151_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx151_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_call_builtin_prolog_α
n72_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              r11, 32
                        .section         .rodata
.Lrkfn153:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n85_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_call_builtin_prolog_α
n73_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn155:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n85_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2544]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax
                        lea              rdi, [rsp + 2400]
                        lea              r8, [rsp + 2400]
.Lx158_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              esi, 1;                              jne   .Lx158_55
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_55:              cmp              esi, 2;                              jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_56:              cmp              al, 72;                              jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              rax, r8;                             je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_41:              lea              r9, [rsp + 2416]
.Lx158_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              esi, 1;                              jne   .Lx158_57
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_57:              cmp              esi, 2;                              jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_58:              cmp              al, 72;                              jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              rax, r9;                             je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_43:              cmp              r8, r9;                              je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx158_44
                        cmp              al, 104;                             je    .Lx158_44
                        cmp              al, 72;                              jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx158_44
                                                                              jmp   .Lx158_45
.Lx158_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx158_53
                        cmp              al, 104;                             je    .Lx158_53
                        cmp              al, 72;                              jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_53
                                                                              jmp   .Lx158_46
.Lx158_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx158_51
.Lx158_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx158_47
                        cmp              al, 104;                             je    .Lx158_47
                        cmp              al, 72;                              jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_47
                                                                              jmp   .Lx158_48
.Lx158_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx158_51
.Lx158_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx158_49
                        cmp              dl, 80;                              je    .Lx158_53
                                                                              jmp   .Lx158_52
.Lx158_49:              cmp              dl, 80;                              je    .Lx158_52
                        cmp              cl, 5;                               je    .Lx158_53
                        cmp              dl, 5;                               je    .Lx158_53
                        cmp              cl, 3;                               jne   .Lx158_50
                        cmp              dl, 3;                               jne   .Lx158_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx158_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx158_51
                                                                              jmp   .Lx158_52
.Lx158_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx158_53
.Lx158_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx158_54
.Lx158_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx158_54
.Lx158_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx158_54:              mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n85_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2544]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 2
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n79_call_builtin_prolog_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn163:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n85_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2544]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2528]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n82_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn169:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n85_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_var_α
n82_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn173:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_string_α
n84_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 8
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n86_call_builtin_prolog_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "no_setof"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn176:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 0
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n88_call_builtin_prolog_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn179:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              r11, 48
                        .section         .rodata
.Lrkfn181:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_var_ref_α
n89_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: mov              r11, 50
                        mov              qword ptr [rsp + 1952], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx185_20
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx185_21
.Lx185_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx185_21:              lea              rax, [rip + .Lx185_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx185_1
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4];               jmp   rax
.Lx185_3:               mov              qword ptr [rsp + 1960], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1952]
                        test             rax, rax;                            jne   .Lx185_5
                        mov              qword ptr [rsp + 1952], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx185_2
.Lx185_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx185_2
.Lx185_4:               mov              rax, qword ptr [rsp + 1952]
                        test             rax, rax;                            jne   .Lx185_6
                        mov              qword ptr [rsp + 1952], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx185_2
.Lx185_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx185_2
.Lx185_1:               call             rt_faildescr@PLT
.Lx185_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx185_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
.Lx185_29:              mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                                                                              jmp   n92_var_α
n91_call_proc_staged_β: mov              r11, 50
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1952], 0
                        lea              rdi, [rsp + 1968]
                        lea              rsi, [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n94_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
                        mov              ecx, 32
                        mov              r8d, 336
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
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
                        test             rax, rax;                            je    n94_call_builtin_prolog_α
                        lea              r11, [rip + .Lx185_7]
                        push             r11
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4];               jmp   rax
.Lx185_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n94_call_builtin_prolog_α
                                                                              jmp   n92_var_α
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn189:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_call_proc_staged_β
n93_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn191:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_var_ref_α
n94_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        lea              r8, [rsp + 1808]
.Lx194_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx194_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx194_41
                        cmp              esi, 1;                              jne   .Lx194_55
                        mov              r8, rax;                             jmp   .Lx194_40
.Lx194_55:              cmp              esi, 2;                              jne   .Lx194_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx194_41
                        mov              r8, rax;                             jmp   .Lx194_40
.Lx194_56:              cmp              al, 72;                              jne   .Lx194_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx194_41
                        cmp              rax, r8;                             je    .Lx194_41
                        mov              r8, rax;                             jmp   .Lx194_40
.Lx194_41:              lea              r9, [rsp + 1824]
.Lx194_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx194_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx194_43
                        cmp              esi, 1;                              jne   .Lx194_57
                        mov              r9, rax;                             jmp   .Lx194_42
.Lx194_57:              cmp              esi, 2;                              jne   .Lx194_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx194_43
                        mov              r9, rax;                             jmp   .Lx194_42
.Lx194_58:              cmp              al, 72;                              jne   .Lx194_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx194_43
                        cmp              rax, r9;                             je    .Lx194_43
                        mov              r9, rax;                             jmp   .Lx194_42
.Lx194_43:              cmp              r8, r9;                              je    .Lx194_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx194_44
                        cmp              al, 104;                             je    .Lx194_44
                        cmp              al, 72;                              jne   .Lx194_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx194_44
                                                                              jmp   .Lx194_45
.Lx194_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx194_53
                        cmp              al, 104;                             je    .Lx194_53
                        cmp              al, 72;                              jne   .Lx194_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx194_53
                                                                              jmp   .Lx194_46
.Lx194_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx194_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx194_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx194_51
.Lx194_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx194_47
                        cmp              al, 104;                             je    .Lx194_47
                        cmp              al, 72;                              jne   .Lx194_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx194_47
                                                                              jmp   .Lx194_48
.Lx194_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx194_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx194_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx194_51
.Lx194_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx194_49
                        cmp              dl, 80;                              je    .Lx194_53
                                                                              jmp   .Lx194_52
.Lx194_49:              cmp              dl, 80;                              je    .Lx194_52
                        cmp              cl, 5;                               je    .Lx194_53
                        cmp              dl, 5;                               je    .Lx194_53
                        cmp              cl, 3;                               jne   .Lx194_50
                        cmp              dl, 3;                               jne   .Lx194_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx194_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx194_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx194_51
                                                                              jmp   .Lx194_52
.Lx194_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx194_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx194_53
.Lx194_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx194_54
.Lx194_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx194_54
.Lx194_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx194_54:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 2
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n99_call_builtin_prolog_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn199:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        lea              r8, [rsp + 1568]
.Lx204_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx204_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx204_41
                        cmp              esi, 1;                              jne   .Lx204_55
                        mov              r8, rax;                             jmp   .Lx204_40
.Lx204_55:              cmp              esi, 2;                              jne   .Lx204_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_41
                        mov              r8, rax;                             jmp   .Lx204_40
.Lx204_56:              cmp              al, 72;                              jne   .Lx204_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx204_41
                        cmp              rax, r8;                             je    .Lx204_41
                        mov              r8, rax;                             jmp   .Lx204_40
.Lx204_41:              lea              r9, [rsp + 1584]
.Lx204_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx204_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_43
                        cmp              esi, 1;                              jne   .Lx204_57
                        mov              r9, rax;                             jmp   .Lx204_42
.Lx204_57:              cmp              esi, 2;                              jne   .Lx204_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_43
                        mov              r9, rax;                             jmp   .Lx204_42
.Lx204_58:              cmp              al, 72;                              jne   .Lx204_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_43
                        cmp              rax, r9;                             je    .Lx204_43
                        mov              r9, rax;                             jmp   .Lx204_42
.Lx204_43:              cmp              r8, r9;                              je    .Lx204_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx204_44
                        cmp              al, 104;                             je    .Lx204_44
                        cmp              al, 72;                              jne   .Lx204_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx204_44
                                                                              jmp   .Lx204_45
.Lx204_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx204_53
                        cmp              al, 104;                             je    .Lx204_53
                        cmp              al, 72;                              jne   .Lx204_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx204_53
                                                                              jmp   .Lx204_46
.Lx204_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx204_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx204_51
.Lx204_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx204_47
                        cmp              al, 104;                             je    .Lx204_47
                        cmp              al, 72;                              jne   .Lx204_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx204_47
                                                                              jmp   .Lx204_48
.Lx204_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx204_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx204_51
.Lx204_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx204_49
                        cmp              dl, 80;                              je    .Lx204_53
                                                                              jmp   .Lx204_52
.Lx204_49:              cmp              dl, 80;                              je    .Lx204_52
                        cmp              cl, 5;                               je    .Lx204_53
                        cmp              dl, 5;                               je    .Lx204_53
                        cmp              cl, 3;                               jne   .Lx204_50
                        cmp              dl, 3;                               jne   .Lx204_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx204_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx204_51
                                                                              jmp   .Lx204_52
.Lx204_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx204_53
.Lx204_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx204_54
.Lx204_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx204_54
.Lx204_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx204_54:              mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_var_α
n102_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn208:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n104_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 8
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n106_call_builtin_prolog_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "no_bagof"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn211:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 0
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n108_call_builtin_prolog_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn214:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_call_builtin_prolog_α
n108_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 68
                        .section         .rodata
.Lrkfn216:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_call_builtin_prolog_α
n109_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn218:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_var_ref_α
n110_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2464]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        lea              r8, [rsp + 1360]
.Lx221_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx221_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx221_41
                        cmp              esi, 1;                              jne   .Lx221_55
                        mov              r8, rax;                             jmp   .Lx221_40
.Lx221_55:              cmp              esi, 2;                              jne   .Lx221_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx221_41
                        mov              r8, rax;                             jmp   .Lx221_40
.Lx221_56:              cmp              al, 72;                              jne   .Lx221_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx221_41
                        cmp              rax, r8;                             je    .Lx221_41
                        mov              r8, rax;                             jmp   .Lx221_40
.Lx221_41:              lea              r9, [rsp + 1376]
.Lx221_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx221_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx221_43
                        cmp              esi, 1;                              jne   .Lx221_57
                        mov              r9, rax;                             jmp   .Lx221_42
.Lx221_57:              cmp              esi, 2;                              jne   .Lx221_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx221_43
                        mov              r9, rax;                             jmp   .Lx221_42
.Lx221_58:              cmp              al, 72;                              jne   .Lx221_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx221_43
                        cmp              rax, r9;                             je    .Lx221_43
                        mov              r9, rax;                             jmp   .Lx221_42
.Lx221_43:              cmp              r8, r9;                              je    .Lx221_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx221_44
                        cmp              al, 104;                             je    .Lx221_44
                        cmp              al, 72;                              jne   .Lx221_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx221_44
                                                                              jmp   .Lx221_45
.Lx221_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx221_53
                        cmp              al, 104;                             je    .Lx221_53
                        cmp              al, 72;                              jne   .Lx221_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx221_53
                                                                              jmp   .Lx221_46
.Lx221_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx221_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx221_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx221_51
.Lx221_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx221_47
                        cmp              al, 104;                             je    .Lx221_47
                        cmp              al, 72;                              jne   .Lx221_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx221_47
                                                                              jmp   .Lx221_48
.Lx221_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx221_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx221_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx221_51
.Lx221_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx221_49
                        cmp              dl, 80;                              je    .Lx221_53
                                                                              jmp   .Lx221_52
.Lx221_49:              cmp              dl, 80;                              je    .Lx221_52
                        cmp              cl, 5;                               je    .Lx221_53
                        cmp              dl, 5;                               je    .Lx221_53
                        cmp              cl, 3;                               jne   .Lx221_50
                        cmp              dl, 3;                               jne   .Lx221_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx221_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx221_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx221_51
                                                                              jmp   .Lx221_52
.Lx221_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx221_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx221_53
.Lx221_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx221_54
.Lx221_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx221_54
.Lx221_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx221_54:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_var_α
n112_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             mov              r11, 72
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn225:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_lit_string_α
n114_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 0
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n116_call_builtin_prolog_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn228:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_lit_string_α
n116_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 76
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n118_lit_string_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n119_lit_string_α
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n120_lit_integer_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n121_call_builtin_prolog_α
.Lx232_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 936]
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_lit_string_α
n121_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n123_lit_string_α
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n124_lit_string_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n125_lit_integer_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n126_call_builtin_prolog_α
.Lx237_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              r11, 85
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_lit_string_α
n126_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n128_lit_string_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n129_lit_string_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n130_lit_integer_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 89
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n131_call_builtin_prolog_α
.Lx242_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_lit_string_α
n131_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n133_lit_string_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n134_lit_string_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n135_lit_integer_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n136_call_builtin_prolog_α
.Lx247_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_lit_string_α
n136_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n138_call_builtin_prolog_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 296]
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_call_builtin_prolog_α
n138_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 520]
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_call_builtin_prolog_α
n139_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_call_builtin_prolog_α
n140_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_var_ref_α
n141_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2448]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn257:              .string          "$keysort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_var_α
n143_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 184], rax;          jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn261:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_lit_string_α
n145_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n147_call_builtin_prolog_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn264:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n150_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_move_label_α
n147_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_move_label_α:      mov              r11, 107
                        lea              rax, [rip + n150_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:     mov              r11, 108
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n149_disjunction_β:     mov              r11, 108;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              r11, 109
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
n150_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n149_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2584]
                        add              rsp, 2608;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2592]
                        add              rsp, 2608;                           jmp   rcx
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
                        .long            368
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
                        .long            560
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
