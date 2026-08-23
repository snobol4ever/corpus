                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$fa0$2F1:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
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
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n6_lit_string_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n7_lit_string_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n8_call_builtin_prolog_α
.Lx23_0:                .quad            .Lx23_0_s
.Lx23_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
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
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n10_call_proc_staged_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α: mov              r11, 11
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 224]
                        lea              rcx, [rsp + 320]
                        call             item$2F3_dcα;                        jmp   .Lx27_2
.Lx27_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx27_29
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
.Lx27_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                                                                              jmp   n11_suspend_α
n10_call_proc_staged_β: mov              r11, 11;                             jmp   n12_call_builtin_prolog_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "item/3"
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx29_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx29_61:               mov              rdi, qword ptr [rsp + 32]
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
n11_suspend_β:          mov              r11, 12;                             jmp   n10_call_proc_staged_β
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
                        test             r12, r12;                            je    .Lx30_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx30_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$fa0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$fa1$2F1:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$fa1$2F1_α_body:
                        lea              rax, [rip + n42_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 14
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx44_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx44_101
.Lx44_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx44_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx44_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx44_101
.Lx44_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx44_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $fa1$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   $fa1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 17
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
.Lx49_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx49_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx49_41
                        cmp              esi, 1;                              jne   .Lx49_55
                        mov              r8, rax;                             jmp   .Lx49_40
.Lx49_55:               cmp              esi, 2;                              jne   .Lx49_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx49_41
                        mov              r8, rax;                             jmp   .Lx49_40
.Lx49_56:               cmp              al, 72;                              jne   .Lx49_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx49_41
                        cmp              rax, r8;                             je    .Lx49_41
                        mov              r8, rax;                             jmp   .Lx49_40
.Lx49_41:               lea              r9, [rsp + 368]
.Lx49_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx49_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx49_43
                        cmp              esi, 1;                              jne   .Lx49_57
                        mov              r9, rax;                             jmp   .Lx49_42
.Lx49_57:               cmp              esi, 2;                              jne   .Lx49_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx49_43
                        mov              r9, rax;                             jmp   .Lx49_42
.Lx49_58:               cmp              al, 72;                              jne   .Lx49_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx49_43
                        cmp              rax, r9;                             je    .Lx49_43
                        mov              r9, rax;                             jmp   .Lx49_42
.Lx49_43:               cmp              r8, r9;                              je    .Lx49_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx49_44
                        cmp              al, 104;                             je    .Lx49_44
                        cmp              al, 72;                              jne   .Lx49_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx49_44
                                                                              jmp   .Lx49_45
.Lx49_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx49_53
                        cmp              al, 104;                             je    .Lx49_53
                        cmp              al, 72;                              jne   .Lx49_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx49_53
                                                                              jmp   .Lx49_46
.Lx49_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx49_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx49_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx49_51
.Lx49_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx49_47
                        cmp              al, 104;                             je    .Lx49_47
                        cmp              al, 72;                              jne   .Lx49_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx49_47
                                                                              jmp   .Lx49_48
.Lx49_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx49_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx49_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx49_51
.Lx49_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx49_49
                        cmp              dl, 80;                              je    .Lx49_53
                                                                              jmp   .Lx49_52
.Lx49_49:               cmp              dl, 80;                              je    .Lx49_52
                        cmp              cl, 5;                               je    .Lx49_53
                        cmp              dl, 5;                               je    .Lx49_53
                        cmp              cl, 3;                               jne   .Lx49_50
                        cmp              dl, 3;                               jne   .Lx49_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx49_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx49_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx49_51
                                                                              jmp   .Lx49_52
.Lx49_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx49_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx49_53
.Lx49_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx49_54
.Lx49_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx49_54
.Lx49_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx49_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n37_lit_string_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n38_lit_string_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n39_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
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
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n41_call_proc_staged_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 24
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 224]
                        lea              rcx, [rsp + 320]
                        call             item$2F3_dcα;                        jmp   .Lx58_2
.Lx58_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx58_29
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
.Lx58_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                                                                              jmp   n42_suspend_α
n41_call_proc_staged_β: mov              r11, 24;                             jmp   n43_call_builtin_prolog_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "item/3"
#-----------------------------------------------------------------------------------------------------------------------
n42_suspend_α:          mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx60_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx60_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n42_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n42_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $fa1$2F1_γ
n42_suspend_β:          mov              r11, 25;                             jmp   n41_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 26
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
                        cmp              al, 104;                             je    $fa1$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $fa1$2F1_ω
n43_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   $fa1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$fa1$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$fa1$2F1_β:
                                                                              jmp   n42_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$fa1$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx61_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx61_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$fa1$2F1_ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__item$2F3:
                        sub              rsp, 688
                        mov              qword ptr [rsp + 664], rcx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 656
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
item$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 27
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx81_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx81_101
.Lx81_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx81_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx81_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx81_101
.Lx81_100:              lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx81_101:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    item$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_var_ref_α
n62_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
.Lx86_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx86_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx86_41
                        cmp              esi, 1;                              jne   .Lx86_55
                        mov              r8, rax;                             jmp   .Lx86_40
.Lx86_55:               cmp              esi, 2;                              jne   .Lx86_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx86_41
                        mov              r8, rax;                             jmp   .Lx86_40
.Lx86_56:               cmp              al, 72;                              jne   .Lx86_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx86_41
                        cmp              rax, r8;                             je    .Lx86_41
                        mov              r8, rax;                             jmp   .Lx86_40
.Lx86_41:               lea              r9, [rsp + 544]
.Lx86_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx86_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx86_43
                        cmp              esi, 1;                              jne   .Lx86_57
                        mov              r9, rax;                             jmp   .Lx86_42
.Lx86_57:               cmp              esi, 2;                              jne   .Lx86_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx86_43
                        mov              r9, rax;                             jmp   .Lx86_42
.Lx86_58:               cmp              al, 72;                              jne   .Lx86_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx86_43
                        cmp              rax, r9;                             je    .Lx86_43
                        mov              r9, rax;                             jmp   .Lx86_42
.Lx86_43:               cmp              r8, r9;                              je    .Lx86_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx86_44
                        cmp              al, 104;                             je    .Lx86_44
                        cmp              al, 72;                              jne   .Lx86_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx86_44
                                                                              jmp   .Lx86_45
.Lx86_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx86_53
                        cmp              al, 104;                             je    .Lx86_53
                        cmp              al, 72;                              jne   .Lx86_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx86_53
                                                                              jmp   .Lx86_46
.Lx86_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx86_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx86_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx86_51
.Lx86_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx86_47
                        cmp              al, 104;                             je    .Lx86_47
                        cmp              al, 72;                              jne   .Lx86_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx86_47
                                                                              jmp   .Lx86_48
.Lx86_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx86_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx86_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx86_51
.Lx86_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx86_49
                        cmp              dl, 80;                              je    .Lx86_53
                                                                              jmp   .Lx86_52
.Lx86_49:               cmp              dl, 80;                              je    .Lx86_52
                        cmp              cl, 5;                               je    .Lx86_53
                        cmp              dl, 5;                               je    .Lx86_53
                        cmp              cl, 3;                               jne   .Lx86_50
                        cmp              dl, 3;                               jne   .Lx86_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx86_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx86_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx86_51
                                                                              jmp   .Lx86_52
.Lx86_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx86_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx86_53
.Lx86_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx86_54
.Lx86_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx86_54
.Lx86_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx86_54:               mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx91_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx91_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_41
                        cmp              esi, 1;                              jne   .Lx91_55
                        mov              r8, rax;                             jmp   .Lx91_40
.Lx91_55:               cmp              esi, 2;                              jne   .Lx91_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_41
                        mov              r8, rax;                             jmp   .Lx91_40
.Lx91_56:               cmp              al, 72;                              jne   .Lx91_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_41
                        cmp              rax, r8;                             je    .Lx91_41
                        mov              r8, rax;                             jmp   .Lx91_40
.Lx91_41:               lea              r9, [rsp + 464]
.Lx91_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx91_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_43
                        cmp              esi, 1;                              jne   .Lx91_57
                        mov              r9, rax;                             jmp   .Lx91_42
.Lx91_57:               cmp              esi, 2;                              jne   .Lx91_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_43
                        mov              r9, rax;                             jmp   .Lx91_42
.Lx91_58:               cmp              al, 72;                              jne   .Lx91_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_43
                        cmp              rax, r9;                             je    .Lx91_43
                        mov              r9, rax;                             jmp   .Lx91_42
.Lx91_43:               cmp              r8, r9;                              je    .Lx91_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx91_44
                        cmp              al, 104;                             je    .Lx91_44
                        cmp              al, 72;                              jne   .Lx91_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx91_44
                                                                              jmp   .Lx91_45
.Lx91_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx91_53
                        cmp              al, 104;                             je    .Lx91_53
                        cmp              al, 72;                              jne   .Lx91_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx91_53
                                                                              jmp   .Lx91_46
.Lx91_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx91_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx91_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx91_51
.Lx91_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx91_47
                        cmp              al, 104;                             je    .Lx91_47
                        cmp              al, 72;                              jne   .Lx91_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx91_47
                                                                              jmp   .Lx91_48
.Lx91_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx91_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx91_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx91_51
.Lx91_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx91_49
                        cmp              dl, 80;                              je    .Lx91_53
                                                                              jmp   .Lx91_52
.Lx91_49:               cmp              dl, 80;                              je    .Lx91_52
                        cmp              cl, 5;                               je    .Lx91_53
                        cmp              dl, 5;                               je    .Lx91_53
                        cmp              cl, 3;                               jne   .Lx91_50
                        cmp              dl, 3;                               jne   .Lx91_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx91_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx91_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx91_51
                                                                              jmp   .Lx91_52
.Lx91_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx91_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx91_53
.Lx91_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx91_54
.Lx91_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx91_54
.Lx91_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_54:               mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_var_ref_α
n68_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        lea              r8, [rsp + 368]
.Lx96_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx96_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx96_41
                        cmp              esi, 1;                              jne   .Lx96_55
                        mov              r8, rax;                             jmp   .Lx96_40
.Lx96_55:               cmp              esi, 2;                              jne   .Lx96_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx96_41
                        mov              r8, rax;                             jmp   .Lx96_40
.Lx96_56:               cmp              al, 72;                              jne   .Lx96_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx96_41
                        cmp              rax, r8;                             je    .Lx96_41
                        mov              r8, rax;                             jmp   .Lx96_40
.Lx96_41:               lea              r9, [rsp + 384]
.Lx96_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx96_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx96_43
                        cmp              esi, 1;                              jne   .Lx96_57
                        mov              r9, rax;                             jmp   .Lx96_42
.Lx96_57:               cmp              esi, 2;                              jne   .Lx96_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx96_43
                        mov              r9, rax;                             jmp   .Lx96_42
.Lx96_58:               cmp              al, 72;                              jne   .Lx96_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx96_43
                        cmp              rax, r9;                             je    .Lx96_43
                        mov              r9, rax;                             jmp   .Lx96_42
.Lx96_43:               cmp              r8, r9;                              je    .Lx96_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx96_44
                        cmp              al, 104;                             je    .Lx96_44
                        cmp              al, 72;                              jne   .Lx96_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx96_44
                                                                              jmp   .Lx96_45
.Lx96_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx96_53
                        cmp              al, 104;                             je    .Lx96_53
                        cmp              al, 72;                              jne   .Lx96_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx96_53
                                                                              jmp   .Lx96_46
.Lx96_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx96_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx96_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx96_51
.Lx96_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx96_47
                        cmp              al, 104;                             je    .Lx96_47
                        cmp              al, 72;                              jne   .Lx96_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx96_47
                                                                              jmp   .Lx96_48
.Lx96_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx96_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx96_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx96_51
.Lx96_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx96_49
                        cmp              dl, 80;                              je    .Lx96_53
                                                                              jmp   .Lx96_52
.Lx96_49:               cmp              dl, 80;                              je    .Lx96_52
                        cmp              cl, 5;                               je    .Lx96_53
                        cmp              dl, 5;                               je    .Lx96_53
                        cmp              cl, 3;                               jne   .Lx96_50
                        cmp              dl, 3;                               jne   .Lx96_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx96_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx96_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx96_51
                                                                              jmp   .Lx96_52
.Lx96_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx96_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx96_53
.Lx96_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx96_54
.Lx96_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx96_54
.Lx96_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx96_54:               mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n74_var_ref_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_call_builtin_prolog_α
n76_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx105_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx105_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx105_41
                        cmp              esi, 1;                              jne   .Lx105_55
                        mov              r8, rax;                             jmp   .Lx105_40
.Lx105_55:              cmp              esi, 2;                              jne   .Lx105_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx105_41
                        mov              r8, rax;                             jmp   .Lx105_40
.Lx105_56:              cmp              al, 72;                              jne   .Lx105_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx105_41
                        cmp              rax, r8;                             je    .Lx105_41
                        mov              r8, rax;                             jmp   .Lx105_40
.Lx105_41:              lea              r9, [rsp + 192]
.Lx105_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx105_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx105_43
                        cmp              esi, 1;                              jne   .Lx105_57
                        mov              r9, rax;                             jmp   .Lx105_42
.Lx105_57:              cmp              esi, 2;                              jne   .Lx105_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx105_43
                        mov              r9, rax;                             jmp   .Lx105_42
.Lx105_58:              cmp              al, 72;                              jne   .Lx105_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx105_43
                        cmp              rax, r9;                             je    .Lx105_43
                        mov              r9, rax;                             jmp   .Lx105_42
.Lx105_43:              cmp              r8, r9;                              je    .Lx105_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx105_44
                        cmp              al, 104;                             je    .Lx105_44
                        cmp              al, 72;                              jne   .Lx105_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx105_44
                                                                              jmp   .Lx105_45
.Lx105_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx105_53
                        cmp              al, 104;                             je    .Lx105_53
                        cmp              al, 72;                              jne   .Lx105_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx105_53
                                                                              jmp   .Lx105_46
.Lx105_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx105_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx105_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx105_51
.Lx105_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx105_47
                        cmp              al, 104;                             je    .Lx105_47
                        cmp              al, 72;                              jne   .Lx105_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx105_47
                                                                              jmp   .Lx105_48
.Lx105_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx105_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx105_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx105_51
.Lx105_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx105_49
                        cmp              dl, 80;                              je    .Lx105_53
                                                                              jmp   .Lx105_52
.Lx105_49:              cmp              dl, 80;                              je    .Lx105_52
                        cmp              cl, 5;                               je    .Lx105_53
                        cmp              dl, 5;                               je    .Lx105_53
                        cmp              cl, 3;                               jne   .Lx105_50
                        cmp              dl, 3;                               jne   .Lx105_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx105_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx105_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx105_51
                                                                              jmp   .Lx105_52
.Lx105_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx105_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx105_53
.Lx105_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx105_54
.Lx105_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx105_54
.Lx105_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx105_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n80_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_move_label_α
n77_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_move_label_α:       mov              r11, 43
                        lea              rax, [rip + n80_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   item$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n79_disjunction_α:      mov              r11, 44
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    item$2F3_ω
                                                                              jmp   rax
n79_disjunction_β:      mov              r11, 44;                             jmp   item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    item$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   item$2F3_ω
n80_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   item$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
item$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
item$2F3_β:
                                                                              jmp   n79_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
item$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 664]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
item$2F3_ω:
                        mov              rcx, qword ptr [rsp + 672]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
item$2F3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
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
                        add              rsp, 32
                        lea              rcx, [rip + .Lx111_2]
                        lea              rdx, [rip + .Lx111_3];               jmp   FN__item$2F3
.Lx111_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx111_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 928
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
n112_call_builtin_prolog_α:
                        mov              r11, 46
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx140_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx140_101
.Lx140_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx140_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx140_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx140_101
.Lx140_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx140_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_call_builtin_prolog_α
n112_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 47
                        .section         .rodata
.Lrkfn142:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 592]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_var_ref_α
n113_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n115_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        mov              r11, 49
                        mov              qword ptr [rsp + 816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx146_20
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx146_21
.Lx146_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx146_21:              lea              rax, [rip + .Lx146_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx146_1
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4];               jmp   rax
.Lx146_3:               mov              qword ptr [rsp + 824], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 816]
                        test             rax, rax;                            jne   .Lx146_5
                        mov              qword ptr [rsp + 816], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx146_2
.Lx146_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx146_2
.Lx146_4:               mov              rax, qword ptr [rsp + 816]
                        test             rax, rax;                            jne   .Lx146_6
                        mov              qword ptr [rsp + 816], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx146_2
.Lx146_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx146_2
.Lx146_1:               call             rt_faildescr@PLT
.Lx146_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx146_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lx146_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n118_call_builtin_prolog_α
                                                                              jmp   n116_var_α
n115_call_proc_staged_β:
                        mov              r11, 49
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 816], 0
                        lea              rdi, [rsp + 832]
                        lea              rsi, [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n118_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              ecx, 32
                        mov              r8d, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
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
                        test             rax, rax;                            je    n118_call_builtin_prolog_α
                        lea              r8, [rip + .Lx146_7]
                        push             r8
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4];               jmp   rax
.Lx146_7:               add              rsp, 8
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n118_call_builtin_prolog_α
                                                                              jmp   n116_var_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 50
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 776], rax;          jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn150:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_call_proc_staged_β
n117_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn152:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lx155_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx155_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              esi, 1;                              jne   .Lx155_55
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_55:              cmp              esi, 2;                              jne   .Lx155_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_56:              cmp              al, 72;                              jne   .Lx155_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              rax, r8;                             je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_41:              lea              r9, [rsp + 688]
.Lx155_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx155_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              esi, 1;                              jne   .Lx155_57
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_57:              cmp              esi, 2;                              jne   .Lx155_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_58:              cmp              al, 72;                              jne   .Lx155_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              rax, r9;                             je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_43:              cmp              r8, r9;                              je    .Lx155_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx155_44
                        cmp              al, 104;                             je    .Lx155_44
                        cmp              al, 72;                              jne   .Lx155_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx155_44
                                                                              jmp   .Lx155_45
.Lx155_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_53
                        cmp              al, 104;                             je    .Lx155_53
                        cmp              al, 72;                              jne   .Lx155_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_53
                                                                              jmp   .Lx155_46
.Lx155_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx155_51
.Lx155_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_47
                        cmp              al, 104;                             je    .Lx155_47
                        cmp              al, 72;                              jne   .Lx155_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_47
                                                                              jmp   .Lx155_48
.Lx155_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx155_51
.Lx155_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx155_49
                        cmp              dl, 80;                              je    .Lx155_53
                                                                              jmp   .Lx155_52
.Lx155_49:              cmp              dl, 80;                              je    .Lx155_52
                        cmp              cl, 5;                               je    .Lx155_53
                        cmp              dl, 5;                               je    .Lx155_53
                        cmp              cl, 3;                               jne   .Lx155_50
                        cmp              dl, 3;                               jne   .Lx155_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx155_51
                                                                              jmp   .Lx155_52
.Lx155_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx155_53
.Lx155_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx155_54
.Lx155_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx155_54
.Lx155_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx155_54:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_var_α
n120_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              r11, 55
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n122_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn159:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 0
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n124_call_builtin_prolog_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn162:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_call_builtin_prolog_α
n124_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              r11, 59
                        .section         .rodata
.Lrkfn164:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 208]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_var_ref_α
n125_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 61
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx168_20
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx168_21
.Lx168_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx168_21:              lea              rax, [rip + .Lx168_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx168_1
                        lea              rcx, [rip + .Lx168_3]
                        lea              rdx, [rip + .Lx168_4];               jmp   rax
.Lx168_3:               mov              qword ptr [rsp + 440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx168_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx168_2
.Lx168_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx168_2
.Lx168_4:               mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx168_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx168_2
.Lx168_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx168_2
.Lx168_1:               call             rt_faildescr@PLT
.Lx168_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx168_29
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
.Lx168_29:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n130_call_builtin_prolog_α
                                                                              jmp   n128_var_α
n127_call_proc_staged_β:
                        mov              r11, 61
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 432], 0
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n130_call_builtin_prolog_α
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
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n130_call_builtin_prolog_α
                        lea              r8, [rip + .Lx168_7]
                        push             r8
                        lea              rcx, [rip + .Lx168_3]
                        lea              rdx, [rip + .Lx168_4];               jmp   rax
.Lx168_7:               add              rsp, 8
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n130_call_builtin_prolog_α
                                                                              jmp   n128_var_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "$fa1/1"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 392], rax;          jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn172:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_call_proc_staged_β
n129_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn174:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              r11, 66
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
.Lx177_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx177_41
                        cmp              esi, 1;                              jne   .Lx177_55
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_55:              cmp              esi, 2;                              jne   .Lx177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx177_41
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_56:              cmp              al, 72;                              jne   .Lx177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx177_41
                        cmp              rax, r8;                             je    .Lx177_41
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_41:              lea              r9, [rsp + 304]
.Lx177_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx177_43
                        cmp              esi, 1;                              jne   .Lx177_57
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_57:              cmp              esi, 2;                              jne   .Lx177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx177_43
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_58:              cmp              al, 72;                              jne   .Lx177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx177_43
                        cmp              rax, r9;                             je    .Lx177_43
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_43:              cmp              r8, r9;                              je    .Lx177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx177_44
                        cmp              al, 104;                             je    .Lx177_44
                        cmp              al, 72;                              jne   .Lx177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx177_44
                                                                              jmp   .Lx177_45
.Lx177_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx177_53
                        cmp              al, 104;                             je    .Lx177_53
                        cmp              al, 72;                              jne   .Lx177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx177_53
                                                                              jmp   .Lx177_46
.Lx177_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx177_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx177_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx177_51
.Lx177_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx177_47
                        cmp              al, 104;                             je    .Lx177_47
                        cmp              al, 72;                              jne   .Lx177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx177_47
                                                                              jmp   .Lx177_48
.Lx177_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx177_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx177_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx177_51
.Lx177_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx177_49
                        cmp              dl, 80;                              je    .Lx177_53
                                                                              jmp   .Lx177_52
.Lx177_49:              cmp              dl, 80;                              je    .Lx177_52
                        cmp              cl, 5;                               je    .Lx177_53
                        cmp              dl, 5;                               je    .Lx177_53
                        cmp              cl, 3;                               jne   .Lx177_50
                        cmp              dl, 3;                               jne   .Lx177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx177_51
                                                                              jmp   .Lx177_52
.Lx177_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx177_53
.Lx177_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx177_54
.Lx177_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx177_54
.Lx177_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx177_54:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_var_α
n132_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 184], rax;          jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn181:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n135_lit_string_α
n134_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n136_call_builtin_prolog_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn184:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n139_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_move_label_α
n136_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_move_label_α:      mov              r11, 71
                        lea              rax, [rip + n139_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n138_disjunction_α:     mov              r11, 72
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n138_disjunction_β:     mov              r11, 72;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n139_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n138_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 936]
                        add              rsp, 960;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 944]
                        add              rsp, 960;                            jmp   rcx
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
                        .long            448
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$fa1/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$fa1$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            448
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__item$2F3
                        .quad            item$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            640
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
