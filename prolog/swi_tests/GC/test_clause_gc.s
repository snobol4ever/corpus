                        .intel_syntax    noprefix
                        .text
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
clause$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:  mov              r11, 3
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 96], 0
.Lx8_60:                .section         .rodata
.Lbynamegenfn3:         .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                                                                              jmp   n3_suspend_α
n2_call_builtin_gen_β:  mov              r11, 3;                              jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:           mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx10_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n3_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n3_suspend_β:           mov              r11, 4;                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx10_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__run$2F2:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 768
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
run$2F2_α_body:
                        lea              rax, [rip + n30_suspend_β]
                        mov              qword ptr [rsp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 5
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx32_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx32_101
.Lx32_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx32_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx32_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx32_101
.Lx32_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx32_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    run$2F2_ω
                                                                              jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 8
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
.Lx37_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx37_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx37_41
                        cmp              esi, 1;                              jne   .Lx37_55
                        mov              r8, rax;                             jmp   .Lx37_40
.Lx37_55:               cmp              esi, 2;                              jne   .Lx37_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx37_41
                        mov              r8, rax;                             jmp   .Lx37_40
.Lx37_56:               cmp              al, 72;                              jne   .Lx37_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx37_41
                        cmp              rax, r8;                             je    .Lx37_41
                        mov              r8, rax;                             jmp   .Lx37_40
.Lx37_41:               lea              r9, [rsp + 624]
.Lx37_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx37_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx37_43
                        cmp              esi, 1;                              jne   .Lx37_57
                        mov              r9, rax;                             jmp   .Lx37_42
.Lx37_57:               cmp              esi, 2;                              jne   .Lx37_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx37_43
                        mov              r9, rax;                             jmp   .Lx37_42
.Lx37_58:               cmp              al, 72;                              jne   .Lx37_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx37_43
                        cmp              rax, r9;                             je    .Lx37_43
                        mov              r9, rax;                             jmp   .Lx37_42
.Lx37_43:               cmp              r8, r9;                              je    .Lx37_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx37_44
                        cmp              al, 104;                             je    .Lx37_44
                        cmp              al, 72;                              jne   .Lx37_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx37_44
                                                                              jmp   .Lx37_45
.Lx37_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx37_53
                        cmp              al, 104;                             je    .Lx37_53
                        cmp              al, 72;                              jne   .Lx37_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx37_53
                                                                              jmp   .Lx37_46
.Lx37_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx37_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx37_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx37_51
.Lx37_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx37_47
                        cmp              al, 104;                             je    .Lx37_47
                        cmp              al, 72;                              jne   .Lx37_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx37_47
                                                                              jmp   .Lx37_48
.Lx37_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx37_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx37_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx37_51
.Lx37_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx37_49
                        cmp              dl, 80;                              je    .Lx37_53
                                                                              jmp   .Lx37_52
.Lx37_49:               cmp              dl, 80;                              je    .Lx37_52
                        cmp              cl, 5;                               je    .Lx37_53
                        cmp              dl, 5;                               je    .Lx37_53
                        cmp              cl, 3;                               jne   .Lx37_50
                        cmp              dl, 3;                               jne   .Lx37_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx37_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx37_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx37_51
                                                                              jmp   .Lx37_52
.Lx37_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx37_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx37_53
.Lx37_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx37_54
.Lx37_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx37_54
.Lx37_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx37_54:               mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 11
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
.Lx42_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx42_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_41
                        cmp              esi, 1;                              jne   .Lx42_55
                        mov              r8, rax;                             jmp   .Lx42_40
.Lx42_55:               cmp              esi, 2;                              jne   .Lx42_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_41
                        mov              r8, rax;                             jmp   .Lx42_40
.Lx42_56:               cmp              al, 72;                              jne   .Lx42_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_41
                        cmp              rax, r8;                             je    .Lx42_41
                        mov              r8, rax;                             jmp   .Lx42_40
.Lx42_41:               lea              r9, [rsp + 544]
.Lx42_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx42_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_43
                        cmp              esi, 1;                              jne   .Lx42_57
                        mov              r9, rax;                             jmp   .Lx42_42
.Lx42_57:               cmp              esi, 2;                              jne   .Lx42_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_43
                        mov              r9, rax;                             jmp   .Lx42_42
.Lx42_58:               cmp              al, 72;                              jne   .Lx42_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_43
                        cmp              rax, r9;                             je    .Lx42_43
                        mov              r9, rax;                             jmp   .Lx42_42
.Lx42_43:               cmp              r8, r9;                              je    .Lx42_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx42_44
                        cmp              al, 104;                             je    .Lx42_44
                        cmp              al, 72;                              jne   .Lx42_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx42_44
                                                                              jmp   .Lx42_45
.Lx42_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx42_53
                        cmp              al, 104;                             je    .Lx42_53
                        cmp              al, 72;                              jne   .Lx42_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx42_53
                                                                              jmp   .Lx42_46
.Lx42_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx42_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx42_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx42_51
.Lx42_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx42_47
                        cmp              al, 104;                             je    .Lx42_47
                        cmp              al, 72;                              jne   .Lx42_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx42_47
                                                                              jmp   .Lx42_48
.Lx42_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx42_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx42_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx42_51
.Lx42_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx42_49
                        cmp              dl, 80;                              je    .Lx42_53
                                                                              jmp   .Lx42_52
.Lx42_49:               cmp              dl, 80;                              je    .Lx42_52
                        cmp              cl, 5;                               je    .Lx42_53
                        cmp              dl, 5;                               je    .Lx42_53
                        cmp              cl, 3;                               jne   .Lx42_50
                        cmp              dl, 3;                               jne   .Lx42_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx42_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx42_51
                                                                              jmp   .Lx42_52
.Lx42_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx42_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx42_53
.Lx42_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx42_54
.Lx42_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx42_54
.Lx42_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx42_54:               mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n20_lit_integer_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n21_call_builtin_prolog_α
.Lx46_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn48:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 416]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n22_var_ref_α
n21_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 18
                        mov              qword ptr [rsp + 336], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx54_200
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx54_201
.Lx54_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx54_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx54_202
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx54_203
.Lx54_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx54_203:              lea              rax, [rip + .Lx54_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx54_1
                        lea              rcx, [rip + .Lx54_4]
                        push             rcx
                        lea              rcx, [rip + .Lx54_3]
                        push             rcx;                                 jmp   rax
.Lx54_3:                add              rsp, 16
                        mov              qword ptr [rsp + 344], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lx54_5
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx54_2
.Lx54_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx54_2
.Lx54_4:                add              rsp, 16
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lx54_6
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx54_2
.Lx54_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx54_2
.Lx54_1:                call             rt_faildescr@PLT
.Lx54_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx54_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx54_29:               mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n25_var_ref_α
n24_call_proc_staged_β: mov              r11, 18
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 336], 0
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n31_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n31_call_builtin_prolog_α
                        lea              r8, [rip + .Lx54_7]
                        push             r8
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4];                jmp   rax
.Lx54_7:                add              rsp, 8
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n25_var_ref_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n29_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: mov              r11, 23
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx64_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx64_201
.Lx64_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx64_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx64_203
.Lx64_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx64_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx64_205
.Lx64_204:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_205:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx64_206
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx64_207
.Lx64_206:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_207:              lea              rax, [rip + .Lx64_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx64_1
                        lea              rcx, [rip + .Lx64_4]
                        push             rcx
                        lea              rcx, [rip + .Lx64_3]
                        push             rcx;                                 jmp   rax
.Lx64_3:                add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx64_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx64_2
.Lx64_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx64_2
.Lx64_4:                add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx64_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx64_2
.Lx64_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx64_2
.Lx64_1:                call             rt_faildescr@PLT
.Lx64_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx64_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx64_29:               mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n24_call_proc_staged_β
                                                                              jmp   n30_suspend_α
n29_call_proc_staged_β: mov              r11, 23
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n24_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 80
                        mov              r8d, 1536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n24_call_proc_staged_β
                        lea              r8, [rip + .Lx64_7]
                        push             r8
                        lea              rcx, [rip + .Lx64_3]
                        lea              rdx, [rip + .Lx64_4];                jmp   rax
.Lx64_7:                add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n24_call_proc_staged_β
                                                                              jmp   n30_suspend_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "run/4"
#-----------------------------------------------------------------------------------------------------------------------
n30_suspend_α:          mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx66_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 672];          jmp   rax
.Lx66_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n30_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n30_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   run$2F2_γ
n30_suspend_β:          mov              r11, 24;                             jmp   n29_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    run$2F2_ω
                                                                              jmp   run$2F2_ω
n31_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
run$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
run$2F2_β:
                                                                              jmp   n30_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
run$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx67_50
                        mov              qword ptr [rsp + 672], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 672];          jmp   rax
.Lx67_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 776]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
run$2F2_ω:
                        mov              rcx, qword ptr [rsp + 784]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__run$2F4:
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 1688], rcx
                        mov              qword ptr [rsp + 1696], rdx
                        mov              qword ptr [rsp + 1704], rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1680
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
run$2F4_α_body:
                        lea              rax, [rip + n104_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 26
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx120_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx120_101
.Lx120_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx120_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx120_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx120_101
.Lx120_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx120_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    run$2F4_ω
                                                                              jmp   n69_var_ref_α
n68_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        lea              r8, [rsp + 1472]
.Lx125_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx125_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx125_41
                        cmp              esi, 1;                              jne   .Lx125_55
                        mov              r8, rax;                             jmp   .Lx125_40
.Lx125_55:              cmp              esi, 2;                              jne   .Lx125_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx125_41
                        mov              r8, rax;                             jmp   .Lx125_40
.Lx125_56:              cmp              al, 72;                              jne   .Lx125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx125_41
                        cmp              rax, r8;                             je    .Lx125_41
                        mov              r8, rax;                             jmp   .Lx125_40
.Lx125_41:              lea              r9, [rsp + 1488]
.Lx125_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx125_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx125_43
                        cmp              esi, 1;                              jne   .Lx125_57
                        mov              r9, rax;                             jmp   .Lx125_42
.Lx125_57:              cmp              esi, 2;                              jne   .Lx125_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx125_43
                        mov              r9, rax;                             jmp   .Lx125_42
.Lx125_58:              cmp              al, 72;                              jne   .Lx125_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx125_43
                        cmp              rax, r9;                             je    .Lx125_43
                        mov              r9, rax;                             jmp   .Lx125_42
.Lx125_43:              cmp              r8, r9;                              je    .Lx125_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx125_44
                        cmp              al, 104;                             je    .Lx125_44
                        cmp              al, 72;                              jne   .Lx125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx125_44
                                                                              jmp   .Lx125_45
.Lx125_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx125_53
                        cmp              al, 104;                             je    .Lx125_53
                        cmp              al, 72;                              jne   .Lx125_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx125_53
                                                                              jmp   .Lx125_46
.Lx125_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx125_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx125_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx125_51
.Lx125_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx125_47
                        cmp              al, 104;                             je    .Lx125_47
                        cmp              al, 72;                              jne   .Lx125_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx125_47
                                                                              jmp   .Lx125_48
.Lx125_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx125_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx125_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx125_51
.Lx125_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx125_49
                        cmp              dl, 80;                              je    .Lx125_53
                                                                              jmp   .Lx125_52
.Lx125_49:              cmp              dl, 80;                              je    .Lx125_52
                        cmp              cl, 5;                               je    .Lx125_53
                        cmp              dl, 5;                               je    .Lx125_53
                        cmp              cl, 3;                               jne   .Lx125_50
                        cmp              dl, 3;                               jne   .Lx125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx125_51
                                                                              jmp   .Lx125_52
.Lx125_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx125_53
.Lx125_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx125_54
.Lx125_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx125_54
.Lx125_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx125_54:              mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        lea              r8, [rsp + 1392]
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
.Lx130_41:              lea              r9, [rsp + 1408]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx130_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx130_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx130_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx130_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx130_54:              mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n77_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        lea              r8, [rsp + 1312]
.Lx135_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx135_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx135_41
                        cmp              esi, 1;                              jne   .Lx135_55
                        mov              r8, rax;                             jmp   .Lx135_40
.Lx135_55:              cmp              esi, 2;                              jne   .Lx135_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx135_41
                        mov              r8, rax;                             jmp   .Lx135_40
.Lx135_56:              cmp              al, 72;                              jne   .Lx135_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx135_41
                        cmp              rax, r8;                             je    .Lx135_41
                        mov              r8, rax;                             jmp   .Lx135_40
.Lx135_41:              lea              r9, [rsp + 1328]
.Lx135_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx135_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx135_43
                        cmp              esi, 1;                              jne   .Lx135_57
                        mov              r9, rax;                             jmp   .Lx135_42
.Lx135_57:              cmp              esi, 2;                              jne   .Lx135_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx135_43
                        mov              r9, rax;                             jmp   .Lx135_42
.Lx135_58:              cmp              al, 72;                              jne   .Lx135_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx135_43
                        cmp              rax, r9;                             je    .Lx135_43
                        mov              r9, rax;                             jmp   .Lx135_42
.Lx135_43:              cmp              r8, r9;                              je    .Lx135_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx135_44
                        cmp              al, 104;                             je    .Lx135_44
                        cmp              al, 72;                              jne   .Lx135_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx135_44
                                                                              jmp   .Lx135_45
.Lx135_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx135_53
                        cmp              al, 104;                             je    .Lx135_53
                        cmp              al, 72;                              jne   .Lx135_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx135_53
                                                                              jmp   .Lx135_46
.Lx135_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx135_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx135_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx135_51
.Lx135_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx135_47
                        cmp              al, 104;                             je    .Lx135_47
                        cmp              al, 72;                              jne   .Lx135_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx135_47
                                                                              jmp   .Lx135_48
.Lx135_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx135_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx135_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx135_51
.Lx135_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx135_49
                        cmp              dl, 80;                              je    .Lx135_53
                                                                              jmp   .Lx135_52
.Lx135_49:              cmp              dl, 80;                              je    .Lx135_52
                        cmp              cl, 5;                               je    .Lx135_53
                        cmp              dl, 5;                               je    .Lx135_53
                        cmp              cl, 3;                               jne   .Lx135_50
                        cmp              dl, 3;                               jne   .Lx135_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx135_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx135_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx135_51
                                                                              jmp   .Lx135_52
.Lx135_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx135_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx135_53
.Lx135_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx135_54
.Lx135_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx135_54
.Lx135_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx135_54:              mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n80_var_ref_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        lea              r8, [rsp + 1216]
.Lx141_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx141_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_61
                        cmp              esi, 1;                              jne   .Lx141_62
                        mov              r8, rax;                             jmp   .Lx141_60
.Lx141_62:              cmp              esi, 2;                              jne   .Lx141_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_61
                        mov              r8, rax;                             jmp   .Lx141_60
.Lx141_63:              cmp              al, 72;                              jne   .Lx141_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_61
                        cmp              rax, r8;                             je    .Lx141_61
                        mov              r8, rax;                             jmp   .Lx141_60
.Lx141_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx141_80
                        cmp              al, 104;                             je    .Lx141_80
                        cmp              al, 72;                              jne   .Lx141_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx141_80
                                                                              jmp   .Lx141_74
.Lx141_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx141_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx141_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx141_73
                        lea              r9, [rsp + 1232]
.Lx141_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx141_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_65
                        cmp              esi, 1;                              jne   .Lx141_66
                        mov              r9, rax;                             jmp   .Lx141_64
.Lx141_66:              cmp              esi, 2;                              jne   .Lx141_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_65
                        mov              r9, rax;                             jmp   .Lx141_64
.Lx141_67:              cmp              al, 72;                              jne   .Lx141_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_65
                        cmp              rax, r9;                             je    .Lx141_65
                        mov              r9, rax;                             jmp   .Lx141_64
.Lx141_65:              lea              rcx, [rsp + 1248]
.Lx141_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx141_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx141_69
                        cmp              esi, 1;                              jne   .Lx141_70
                        mov              rcx, rax;                            jmp   .Lx141_68
.Lx141_70:              cmp              esi, 2;                              jne   .Lx141_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_69
                        mov              rcx, rax;                            jmp   .Lx141_68
.Lx141_71:              cmp              al, 72;                              jne   .Lx141_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx141_69
                        cmp              rax, rcx;                            je    .Lx141_69
                        mov              rcx, rax;                            jmp   .Lx141_68
.Lx141_69:              cmp              r9, rcx;                             je    .Lx141_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx141_75
                        cmp              al, 104;                             je    .Lx141_75
                        cmp              al, 72;                              jne   .Lx141_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_75
                                                                              jmp   .Lx141_72
.Lx141_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx141_76
                        cmp              al, 104;                             je    .Lx141_76
                        cmp              al, 72;                              jne   .Lx141_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx141_76
                                                                              jmp   .Lx141_72
.Lx141_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx141_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx141_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx141_77
.Lx141_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx141_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx141_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx141_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx141_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx141_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 1232]
.Lx141_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx141_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_82
                        cmp              esi, 1;                              jne   .Lx141_83
                        mov              r9, rax;                             jmp   .Lx141_81
.Lx141_83:              cmp              esi, 2;                              jne   .Lx141_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_82
                        mov              r9, rax;                             jmp   .Lx141_81
.Lx141_84:              cmp              al, 72;                              jne   .Lx141_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_82
                        cmp              rax, r9;                             je    .Lx141_82
                        mov              r9, rax;                             jmp   .Lx141_81
.Lx141_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx141_85
                        cmp              al, 104;                             je    .Lx141_85
                        cmp              al, 72;                              jne   .Lx141_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_85
                                                                              jmp   .Lx141_86
.Lx141_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx141_87
.Lx141_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx141_87:              lea              rcx, [rsp + 1248]
.Lx141_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx141_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx141_89
                        cmp              esi, 1;                              jne   .Lx141_90
                        mov              rcx, rax;                            jmp   .Lx141_88
.Lx141_90:              cmp              esi, 2;                              jne   .Lx141_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_89
                        mov              rcx, rax;                            jmp   .Lx141_88
.Lx141_91:              cmp              al, 72;                              jne   .Lx141_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx141_89
                        cmp              rax, rcx;                            je    .Lx141_89
                        mov              rcx, rax;                            jmp   .Lx141_88
.Lx141_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx141_92
                        cmp              al, 104;                             je    .Lx141_92
                        cmp              al, 72;                              jne   .Lx141_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx141_92
                                                                              jmp   .Lx141_93
.Lx141_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx141_94
.Lx141_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx141_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx141_77
.Lx141_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx141_77
.Lx141_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx141_77:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n82_var_ref_α
n81_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn147:              .string          "$succ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n105_call_builtin_prolog_α
                                                                              jmp   n85_cut_α
n84_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_cut_α:              mov              r11, 43;                             jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n88_lit_integer_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n89_call_builtin_prolog_α
.Lx152_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn154:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n90_var_ref_α
n89_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n92_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α: mov              r11, 50
                        mov              qword ptr [rsp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx160_200
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx160_201
.Lx160_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx160_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx160_202
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx160_203
.Lx160_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx160_203:             lea              rax, [rip + .Lx160_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx160_1
                        lea              rcx, [rip + .Lx160_4]
                        push             rcx
                        lea              rcx, [rip + .Lx160_3]
                        push             rcx;                                 jmp   rax
.Lx160_3:               add              rsp, 16
                        mov              qword ptr [rsp + 936], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx160_5
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx160_2
.Lx160_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx160_2
.Lx160_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx160_6
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx160_2
.Lx160_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx160_2
.Lx160_1:               call             rt_faildescr@PLT
.Lx160_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx160_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
.Lx160_29:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n93_var_ref_α
n92_call_proc_staged_β: mov              r11, 50
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 928], 0
                        lea              rdi, [rsp + 944]
                        lea              rsi, [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n119_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n119_call_builtin_prolog_α
                        lea              r8, [rip + .Lx160_7]
                        push             r8
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4];               jmp   rax
.Lx160_7:               add              rsp, 8
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n93_var_ref_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n95_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α: mov              r11, 53
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_200
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx166_201
.Lx166_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx166_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_202
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx166_203
.Lx166_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx166_203:             mov              rdi, qword ptr [rip + .Lx166_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx166_1
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx166_4]
                        push             rcx
                        lea              rcx, [rip + .Lx166_3]
                        push             rcx;                                 jmp   rax
.Lx166_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx166_2
.Lx166_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx166_2
.Lx166_1:               call             rt_faildescr@PLT
.Lx166_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx166_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lx166_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n92_call_proc_staged_β
                                                                              jmp   n96_var_ref_α
n95_call_proc_staged_β: mov              r11, 53;                             jmp   n92_call_proc_staged_β
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "=@=/2"
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n97_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n98_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α: mov              r11, 56
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx172_200
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx172_201
.Lx172_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx172_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx172_202
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx172_203
.Lx172_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx172_203:             mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx172_1
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx172_4]
                        push             rcx
                        lea              rcx, [rip + .Lx172_3]
                        push             rcx;                                 jmp   rax
.Lx172_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx172_2
.Lx172_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx172_2
.Lx172_1:               call             rt_faildescr@PLT
.Lx172_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx172_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
.Lx172_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n95_call_proc_staged_β
                                                                              jmp   n99_var_ref_α
n98_call_proc_staged_β: mov              r11, 56;                             jmp   n95_call_proc_staged_β
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "=@=/2"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        mov              r11, 61
                        mov              qword ptr [rsp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx182_200
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx182_201
.Lx182_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx182_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx182_202
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx182_203
.Lx182_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx182_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx182_204
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx182_205
.Lx182_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx182_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx182_206
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx182_207
.Lx182_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx182_207:             lea              rax, [rip + .Lx182_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx182_1
                        lea              rcx, [rip + .Lx182_4]
                        push             rcx
                        lea              rcx, [rip + .Lx182_3]
                        push             rcx;                                 jmp   rax
.Lx182_3:               add              rsp, 16
                        mov              qword ptr [rsp + 600], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx182_5
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx182_2
.Lx182_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx182_2
.Lx182_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lx182_6
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx182_2
.Lx182_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx182_2
.Lx182_1:               call             rt_faildescr@PLT
.Lx182_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx182_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx182_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n98_call_proc_staged_β
                                                                              jmp   n104_suspend_α
n103_call_proc_staged_β:
                        mov              r11, 61
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 592], 0
                        lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n98_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              ecx, 80
                        mov              r8d, 1536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n98_call_proc_staged_β
                        lea              r8, [rip + .Lx182_7]
                        push             r8
                        lea              rcx, [rip + .Lx182_3]
                        lea              rdx, [rip + .Lx182_4];               jmp   rax
.Lx182_7:               add              rsp, 8
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n98_call_proc_staged_β
                                                                              jmp   n104_suspend_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "run/4"
#-----------------------------------------------------------------------------------------------------------------------
n104_suspend_α:         mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx184_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx184_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n104_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n104_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   run$2F4_γ
n104_suspend_β:         mov              r11, 62;                             jmp   n103_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    run$2F4_ω
                                                                              jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n107_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n108_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 66
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
.Lx190_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx190_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx190_41
                        cmp              esi, 1;                              jne   .Lx190_55
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_55:              cmp              esi, 2;                              jne   .Lx190_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx190_41
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_56:              cmp              al, 72;                              jne   .Lx190_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx190_41
                        cmp              rax, r8;                             je    .Lx190_41
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_41:              lea              r9, [rsp + 432]
.Lx190_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx190_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx190_43
                        cmp              esi, 1;                              jne   .Lx190_57
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_57:              cmp              esi, 2;                              jne   .Lx190_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx190_43
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_58:              cmp              al, 72;                              jne   .Lx190_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx190_43
                        cmp              rax, r9;                             je    .Lx190_43
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_43:              cmp              r8, r9;                              je    .Lx190_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx190_44
                        cmp              al, 104;                             je    .Lx190_44
                        cmp              al, 72;                              jne   .Lx190_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx190_44
                                                                              jmp   .Lx190_45
.Lx190_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx190_53
                        cmp              al, 104;                             je    .Lx190_53
                        cmp              al, 72;                              jne   .Lx190_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx190_53
                                                                              jmp   .Lx190_46
.Lx190_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx190_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx190_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx190_51
.Lx190_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx190_47
                        cmp              al, 104;                             je    .Lx190_47
                        cmp              al, 72;                              jne   .Lx190_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx190_47
                                                                              jmp   .Lx190_48
.Lx190_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx190_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx190_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx190_51
.Lx190_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx190_49
                        cmp              dl, 80;                              je    .Lx190_53
                                                                              jmp   .Lx190_52
.Lx190_49:              cmp              dl, 80;                              je    .Lx190_52
                        cmp              cl, 5;                               je    .Lx190_53
                        cmp              dl, 5;                               je    .Lx190_53
                        cmp              cl, 3;                               jne   .Lx190_50
                        cmp              dl, 3;                               jne   .Lx190_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx190_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx190_51
                                                                              jmp   .Lx190_52
.Lx190_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx190_53
.Lx190_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx190_54
.Lx190_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx190_54
.Lx190_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx190_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx195_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx195_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx195_41
                        cmp              esi, 1;                              jne   .Lx195_55
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_55:              cmp              esi, 2;                              jne   .Lx195_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx195_41
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_56:              cmp              al, 72;                              jne   .Lx195_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx195_41
                        cmp              rax, r8;                             je    .Lx195_41
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_41:              lea              r9, [rsp + 352]
.Lx195_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx195_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx195_43
                        cmp              esi, 1;                              jne   .Lx195_57
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_57:              cmp              esi, 2;                              jne   .Lx195_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx195_43
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_58:              cmp              al, 72;                              jne   .Lx195_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx195_43
                        cmp              rax, r9;                             je    .Lx195_43
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_43:              cmp              r8, r9;                              je    .Lx195_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx195_44
                        cmp              al, 104;                             je    .Lx195_44
                        cmp              al, 72;                              jne   .Lx195_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx195_44
                                                                              jmp   .Lx195_45
.Lx195_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx195_53
                        cmp              al, 104;                             je    .Lx195_53
                        cmp              al, 72;                              jne   .Lx195_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx195_53
                                                                              jmp   .Lx195_46
.Lx195_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx195_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx195_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx195_51
.Lx195_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx195_47
                        cmp              al, 104;                             je    .Lx195_47
                        cmp              al, 72;                              jne   .Lx195_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx195_47
                                                                              jmp   .Lx195_48
.Lx195_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx195_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx195_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx195_51
.Lx195_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx195_49
                        cmp              dl, 80;                              je    .Lx195_53
                                                                              jmp   .Lx195_52
.Lx195_49:              cmp              dl, 80;                              je    .Lx195_52
                        cmp              cl, 5;                               je    .Lx195_53
                        cmp              dl, 5;                               je    .Lx195_53
                        cmp              cl, 3;                               jne   .Lx195_50
                        cmp              dl, 3;                               jne   .Lx195_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx195_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx195_51
                                                                              jmp   .Lx195_52
.Lx195_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx195_53
.Lx195_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx195_54
.Lx195_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx195_54
.Lx195_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx195_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n112_var_ref_α
n111_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx200_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx200_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_41
                        cmp              esi, 1;                              jne   .Lx200_55
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_55:              cmp              esi, 2;                              jne   .Lx200_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx200_41
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_56:              cmp              al, 72;                              jne   .Lx200_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_41
                        cmp              rax, r8;                             je    .Lx200_41
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_41:              lea              r9, [rsp + 272]
.Lx200_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx200_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx200_43
                        cmp              esi, 1;                              jne   .Lx200_57
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_57:              cmp              esi, 2;                              jne   .Lx200_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx200_43
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_58:              cmp              al, 72;                              jne   .Lx200_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx200_43
                        cmp              rax, r9;                             je    .Lx200_43
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_43:              cmp              r8, r9;                              je    .Lx200_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx200_44
                        cmp              al, 104;                             je    .Lx200_44
                        cmp              al, 72;                              jne   .Lx200_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx200_44
                                                                              jmp   .Lx200_45
.Lx200_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx200_53
                        cmp              al, 104;                             je    .Lx200_53
                        cmp              al, 72;                              jne   .Lx200_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx200_53
                                                                              jmp   .Lx200_46
.Lx200_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx200_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx200_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx200_51
.Lx200_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx200_47
                        cmp              al, 104;                             je    .Lx200_47
                        cmp              al, 72;                              jne   .Lx200_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx200_47
                                                                              jmp   .Lx200_48
.Lx200_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx200_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx200_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx200_51
.Lx200_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx200_49
                        cmp              dl, 80;                              je    .Lx200_53
                                                                              jmp   .Lx200_52
.Lx200_49:              cmp              dl, 80;                              je    .Lx200_52
                        cmp              cl, 5;                               je    .Lx200_53
                        cmp              dl, 5;                               je    .Lx200_53
                        cmp              cl, 3;                               jne   .Lx200_50
                        cmp              dl, 3;                               jne   .Lx200_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx200_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx200_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx200_51
                                                                              jmp   .Lx200_52
.Lx200_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx200_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx200_53
.Lx200_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx200_54
.Lx200_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx200_54
.Lx200_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx200_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n115_var_ref_α
n114_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n117_call_builtin_prolog_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              rsi, qword ptr [rip + .Lx204_2];     jmp   .Lx204_3
.Lx204_2:               .quad            .Lx204_2_s
.Lx204_2_s:             .string          "[]"
.Lx204_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                                                                              jmp   n118_suspend_α
n117_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_suspend_α:         mov              r11, 76
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx206_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx206_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n118_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   run$2F4_γ
n118_suspend_β:         mov              r11, 76;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    run$2F4_ω
                                                                              jmp   run$2F4_ω
n119_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   run$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
run$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
run$2F4_β:
                                                                              jmp   n104_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
run$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx207_50
                        mov              qword ptr [rsp + 1536], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx207_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1688]
                        add              rsp, 1712;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
run$2F4_ω:
                        mov              rcx, qword ptr [rsp + 1696]
                        add              rsp, 1712;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__current_prolog_flag$2F2:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
current_prolog_flag$2F2_α_body:
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n210_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_gen_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 96], 0
.Lx216_60:              .section         .rodata
.Lbynamegenfn80:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn80]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    current_prolog_flag$2F2_ω
                                                                              jmp   n211_suspend_α
n210_call_builtin_gen_β:
                        mov              r11, 80;                             jmp   .Lx216_60
#-----------------------------------------------------------------------------------------------------------------------
n211_suspend_α:         mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx218_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx218_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n211_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n211_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   current_prolog_flag$2F2_γ
n211_suspend_β:         mov              r11, 81;                             jmp   n210_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_prolog_flag$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
current_prolog_flag$2F2_β:
                                                                              jmp   n210_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_prolog_flag$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx218_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx218_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
current_prolog_flag$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__gspace$2F1:
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rcx
                        mov              qword ptr [rsp + 1440], rdx
                        mov              qword ptr [rsp + 1448], rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1424
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
gspace$2F1_α_body:
                        lea              rax, [rip + n255_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_prolog_α:
                        mov              r11, 82
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx257_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx257_101
.Lx257_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx257_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx257_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx257_101
.Lx257_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx257_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    gspace$2F1_ω
                                                                              jmp   n220_var_ref_α
n219_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   gspace$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        lea              r8, [rsp + 1216]
.Lx262_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx262_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_41
                        cmp              esi, 1;                              jne   .Lx262_55
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_55:              cmp              esi, 2;                              jne   .Lx262_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx262_41
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_56:              cmp              al, 72;                              jne   .Lx262_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_41
                        cmp              rax, r8;                             je    .Lx262_41
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_41:              lea              r9, [rsp + 1232]
.Lx262_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx262_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx262_43
                        cmp              esi, 1;                              jne   .Lx262_57
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_57:              cmp              esi, 2;                              jne   .Lx262_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx262_43
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_58:              cmp              al, 72;                              jne   .Lx262_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx262_43
                        cmp              rax, r9;                             je    .Lx262_43
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_43:              cmp              r8, r9;                              je    .Lx262_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx262_44
                        cmp              al, 104;                             je    .Lx262_44
                        cmp              al, 72;                              jne   .Lx262_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx262_44
                                                                              jmp   .Lx262_45
.Lx262_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx262_53
                        cmp              al, 104;                             je    .Lx262_53
                        cmp              al, 72;                              jne   .Lx262_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx262_53
                                                                              jmp   .Lx262_46
.Lx262_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx262_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx262_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx262_51
.Lx262_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx262_47
                        cmp              al, 104;                             je    .Lx262_47
                        cmp              al, 72;                              jne   .Lx262_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx262_47
                                                                              jmp   .Lx262_48
.Lx262_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx262_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx262_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx262_51
.Lx262_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx262_49
                        cmp              dl, 80;                              je    .Lx262_53
                                                                              jmp   .Lx262_52
.Lx262_49:              cmp              dl, 80;                              je    .Lx262_52
                        cmp              cl, 5;                               je    .Lx262_53
                        cmp              dl, 5;                               je    .Lx262_53
                        cmp              cl, 3;                               jne   .Lx262_50
                        cmp              dl, 3;                               jne   .Lx262_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx262_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx262_51
                                                                              jmp   .Lx262_52
.Lx262_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx262_53
.Lx262_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx262_54
.Lx262_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx262_54
.Lx262_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_54:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n223_call_proc_staged_α
n222_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              r11, 86
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx264_1
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx264_4]
                        push             rcx
                        lea              rcx, [rip + .Lx264_3]
                        push             rcx;                                 jmp   rax
.Lx264_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx264_2
.Lx264_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx264_2
.Lx264_1:               call             rt_faildescr@PLT
.Lx264_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx264_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
.Lx264_29:              mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n224_lit_string_α
n223_call_proc_staged_β:
                        mov              r11, 86;                             jmp   n256_call_builtin_prolog_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 11
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n225_var_ref_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n226_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        mov              r11, 89
                        mov              qword ptr [rsp + 1104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx269_200
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx269_201
.Lx269_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx269_202
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx269_203
.Lx269_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_203:             lea              rax, [rip + .Lx269_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx269_1
                        lea              rcx, [rip + .Lx269_4]
                        push             rcx
                        lea              rcx, [rip + .Lx269_3]
                        push             rcx;                                 jmp   rax
.Lx269_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1112], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1104]
                        test             rax, rax;                            jne   .Lx269_5
                        mov              qword ptr [rsp + 1104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx269_2
.Lx269_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx269_2
.Lx269_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1104]
                        test             rax, rax;                            jne   .Lx269_6
                        mov              qword ptr [rsp + 1104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx269_2
.Lx269_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx269_2
.Lx269_1:               call             rt_faildescr@PLT
.Lx269_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx269_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
.Lx269_29:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n227_lit_string_α
n226_call_proc_staged_β:
                        mov              r11, 89
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1104], 0
                        lea              rdi, [rsp + 1120]
                        lea              rsi, [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n223_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n223_call_proc_staged_β
                        lea              r8, [rip + .Lx269_7]
                        push             r8
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4];               jmp   rax
.Lx269_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n227_lit_string_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 10
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n228_var_ref_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "globalused"
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n229_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        mov              r11, 92
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx274_200
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx274_201
.Lx274_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx274_202
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx274_203
.Lx274_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_203:             mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx274_1
                        mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx274_4]
                        push             rcx
                        lea              rcx, [rip + .Lx274_3]
                        push             rcx;                                 jmp   rax
.Lx274_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx274_2
.Lx274_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx274_2
.Lx274_1:               call             rt_faildescr@PLT
.Lx274_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx274_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
.Lx274_29:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n226_call_proc_staged_β
                                                                              jmp   n230_lit_string_α
n229_call_proc_staged_β:
                        mov              r11, 92;                             jmp   n226_call_proc_staged_β
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 9
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n231_var_ref_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "localused"
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n232_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_proc_staged_α:
                        mov              r11, 95
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx279_200
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx279_201
.Lx279_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx279_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx279_202
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx279_203
.Lx279_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx279_203:             mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx279_1
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx279_4]
                        push             rcx
                        lea              rcx, [rip + .Lx279_3]
                        push             rcx;                                 jmp   rax
.Lx279_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx279_2
.Lx279_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx279_2
.Lx279_1:               call             rt_faildescr@PLT
.Lx279_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx279_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx279_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n229_call_proc_staged_β
                                                                              jmp   n233_lit_string_α
n232_call_proc_staged_β:
                        mov              r11, 95;                             jmp   n229_call_proc_staged_β
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 9
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n234_var_ref_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "trailused"
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n235_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        mov              r11, 98
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx284_200
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx284_201
.Lx284_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx284_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx284_202
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx284_203
.Lx284_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx284_203:             mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx284_1
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx284_4]
                        push             rcx
                        lea              rcx, [rip + .Lx284_3]
                        push             rcx;                                 jmp   rax
.Lx284_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx284_2
.Lx284_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx284_2
.Lx284_1:               call             rt_faildescr@PLT
.Lx284_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx284_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
.Lx284_29:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n232_call_proc_staged_β
                                                                              jmp   n236_var_ref_α
n235_call_proc_staged_β:
                        mov              r11, 98;                             jmp   n232_call_proc_staged_β
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 728], rax;          jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 744], rax;          jmp   n239_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n240_var_α
n239_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 760], rax;          jmp   n241_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n242_call_builtin_prolog_α
n241_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n243_lit_string_α
n242_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n235_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 12
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n244_var_ref_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "address_bits"
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n245_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        mov              r11, 108
                        mov              qword ptr [rsp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx300_200
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx300_201
.Lx300_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx300_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx300_202
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx300_203
.Lx300_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx300_203:             lea              rax, [rip + .Lx300_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx300_1
                        lea              rcx, [rip + .Lx300_4]
                        push             rcx
                        lea              rcx, [rip + .Lx300_3]
                        push             rcx;                                 jmp   rax
.Lx300_3:               add              rsp, 16
                        mov              qword ptr [rsp + 472], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 464]
                        test             rax, rax;                            jne   .Lx300_5
                        mov              qword ptr [rsp + 464], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx300_2
.Lx300_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx300_2
.Lx300_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 464]
                        test             rax, rax;                            jne   .Lx300_6
                        mov              qword ptr [rsp + 464], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx300_2
.Lx300_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx300_2
.Lx300_1:               call             rt_faildescr@PLT
.Lx300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
.Lx300_29:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n246_var_ref_α
n245_call_proc_staged_β:
                        mov              r11, 108
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 464], 0
                        lea              rdi, [rsp + 480]
                        lea              rsi, [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n235_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n235_call_proc_staged_β
                        lea              r8, [rip + .Lx300_7]
                        push             r8
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4];               jmp   rax
.Lx300_7:               add              rsp, 8
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n246_var_ref_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 296], rax;          jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 312], rax;          jmp   n249_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n250_var_α
n249_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 392], rax;          jmp   n251_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n252_call_builtin_prolog_α
.Lx310_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n253_call_builtin_prolog_α
n252_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n256_call_builtin_prolog_α
                                                                              jmp   n254_call_builtin_prolog_α
n253_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              r11, 117
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n245_call_proc_staged_β
                                                                              jmp   n255_suspend_α
n254_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n245_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n255_suspend_α:         mov              r11, 118
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx315_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx315_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n255_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n255_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gspace$2F1_γ
n255_suspend_β:         mov              r11, 118;                            jmp   n245_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    gspace$2F1_ω
                                                                              jmp   gspace$2F1_ω
n256_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   gspace$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
gspace$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gspace$2F1_β:
                                                                              jmp   n255_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
gspace$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx316_50
                        mov              qword ptr [rsp + 1280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx316_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1432]
                        add              rsp, 1456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
gspace$2F1_ω:
                        mov              rcx, qword ptr [rsp + 1440]
                        add              rsp, 1456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$2C$2F2:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1328
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$2C$2F2_α_body:
                        lea              rax, [rip + n342_suspend_β]
                        mov              qword ptr [rsp + 1248], rax
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
                        mov              r11, 120
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx355_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx355_101
.Lx355_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx355_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx355_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx355_101
.Lx355_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx355_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   n318_var_ref_α
n317_call_builtin_prolog_β:
                        mov              r11, 120;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n320_lit_string_α
.Lx358_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 6
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n321_call_builtin_prolog_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "gspace"
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n344_var_ref_α
                                                                              jmp   n322_var_ref_α
n321_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 6
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n324_var_ref_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "gspace"
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n325_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              r11, 128
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n343_call_builtin_prolog_α
                                                                              jmp   n326_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                        mov              r11, 128;                            jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lx367_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              esi, 1;                              jne   .Lx367_55
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_55:              cmp              esi, 2;                              jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_56:              cmp              al, 72;                              jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              rax, r8;                             je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_41:              lea              r9, [rsp + 1008]
.Lx367_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              esi, 1;                              jne   .Lx367_57
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_57:              cmp              esi, 2;                              jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_58:              cmp              al, 72;                              jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              rax, r9;                             je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_43:              cmp              r8, r9;                              je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx367_44
                        cmp              al, 104;                             je    .Lx367_44
                        cmp              al, 72;                              jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx367_44
                                                                              jmp   .Lx367_45
.Lx367_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_53
                        cmp              al, 104;                             je    .Lx367_53
                        cmp              al, 72;                              jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_53
                                                                              jmp   .Lx367_46
.Lx367_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx367_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx367_51
.Lx367_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_47
                        cmp              al, 104;                             je    .Lx367_47
                        cmp              al, 72;                              jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_47
                                                                              jmp   .Lx367_48
.Lx367_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx367_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx367_51
.Lx367_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx367_49
                        cmp              dl, 80;                              je    .Lx367_53
                                                                              jmp   .Lx367_52
.Lx367_49:              cmp              dl, 80;                              je    .Lx367_52
                        cmp              cl, 5;                               je    .Lx367_53
                        cmp              dl, 5;                               je    .Lx367_53
                        cmp              cl, 3;                               jne   .Lx367_50
                        cmp              dl, 3;                               jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx367_51
                                                                              jmp   .Lx367_52
.Lx367_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx367_53
.Lx367_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx367_54
.Lx367_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx367_54
.Lx367_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx367_54:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n343_call_builtin_prolog_α
                                                                              jmp   n327_var_ref_α
n326_call_builtin_prolog_β:
                        mov              r11, 129;                            jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n329_var_ref_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "is"
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 3
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n331_lit_integer_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n332_lit_string_α
.Lx374_0:               .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n333_lit_string_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 2
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n334_var_ref_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n335_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n336_call_builtin_prolog_α
.Lx379_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_prolog_α:
                        mov              r11, 139
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   n337_lit_integer_α
n336_call_builtin_prolog_β:
                        mov              r11, 139;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n338_call_builtin_prolog_α
.Lx381_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   n339_call_builtin_prolog_α
n338_call_builtin_prolog_β:
                        mov              r11, 141;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n339_call_builtin_prolog_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   n340_call_builtin_prolog_α
n339_call_builtin_prolog_β:
                        mov              r11, 142;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n343_call_builtin_prolog_α
                                                                              jmp   n341_call_builtin_prolog_α
n340_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_prolog_α:
                        mov              r11, 144
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        lea              r8, [rsp + 464]
.Lx385_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx385_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx385_41
                        cmp              esi, 1;                              jne   .Lx385_55
                        mov              r8, rax;                             jmp   .Lx385_40
.Lx385_55:              cmp              esi, 2;                              jne   .Lx385_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_41
                        mov              r8, rax;                             jmp   .Lx385_40
.Lx385_56:              cmp              al, 72;                              jne   .Lx385_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx385_41
                        cmp              rax, r8;                             je    .Lx385_41
                        mov              r8, rax;                             jmp   .Lx385_40
.Lx385_41:              lea              r9, [rsp + 480]
.Lx385_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx385_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_43
                        cmp              esi, 1;                              jne   .Lx385_57
                        mov              r9, rax;                             jmp   .Lx385_42
.Lx385_57:              cmp              esi, 2;                              jne   .Lx385_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_43
                        mov              r9, rax;                             jmp   .Lx385_42
.Lx385_58:              cmp              al, 72;                              jne   .Lx385_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_43
                        cmp              rax, r9;                             je    .Lx385_43
                        mov              r9, rax;                             jmp   .Lx385_42
.Lx385_43:              cmp              r8, r9;                              je    .Lx385_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx385_44
                        cmp              al, 104;                             je    .Lx385_44
                        cmp              al, 72;                              jne   .Lx385_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx385_44
                                                                              jmp   .Lx385_45
.Lx385_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx385_53
                        cmp              al, 104;                             je    .Lx385_53
                        cmp              al, 72;                              jne   .Lx385_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx385_53
                                                                              jmp   .Lx385_46
.Lx385_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx385_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx385_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx385_51
.Lx385_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx385_47
                        cmp              al, 104;                             je    .Lx385_47
                        cmp              al, 72;                              jne   .Lx385_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx385_47
                                                                              jmp   .Lx385_48
.Lx385_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx385_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx385_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx385_51
.Lx385_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx385_49
                        cmp              dl, 80;                              je    .Lx385_53
                                                                              jmp   .Lx385_52
.Lx385_49:              cmp              dl, 80;                              je    .Lx385_52
                        cmp              cl, 5;                               je    .Lx385_53
                        cmp              dl, 5;                               je    .Lx385_53
                        cmp              cl, 3;                               jne   .Lx385_50
                        cmp              dl, 3;                               jne   .Lx385_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx385_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx385_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx385_51
                                                                              jmp   .Lx385_52
.Lx385_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx385_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx385_53
.Lx385_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx385_54
.Lx385_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx385_54
.Lx385_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx385_54:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n343_call_builtin_prolog_α
                                                                              jmp   n342_suspend_α
n341_call_builtin_prolog_β:
                        mov              r11, 144;                            jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_suspend_α:         mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx387_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248];         jmp   rax
.Lx387_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n342_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n342_suspend_β]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n342_suspend_β:         mov              r11, 145;                            jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                        mov              r11, 146;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
                        mov              r11, 149
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx393_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx393_41
                        cmp              esi, 1;                              jne   .Lx393_55
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_55:              cmp              esi, 2;                              jne   .Lx393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx393_41
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_56:              cmp              al, 72;                              jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx393_41
                        cmp              rax, r8;                             je    .Lx393_41
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_41:              lea              r9, [rsp + 352]
.Lx393_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx393_43
                        cmp              esi, 1;                              jne   .Lx393_57
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_57:              cmp              esi, 2;                              jne   .Lx393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx393_43
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_58:              cmp              al, 72;                              jne   .Lx393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx393_43
                        cmp              rax, r9;                             je    .Lx393_43
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_43:              cmp              r8, r9;                              je    .Lx393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx393_44
                        cmp              al, 104;                             je    .Lx393_44
                        cmp              al, 72;                              jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx393_44
                                                                              jmp   .Lx393_45
.Lx393_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx393_53
                        cmp              al, 104;                             je    .Lx393_53
                        cmp              al, 72;                              jne   .Lx393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx393_53
                                                                              jmp   .Lx393_46
.Lx393_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx393_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx393_51
.Lx393_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx393_47
                        cmp              al, 104;                             je    .Lx393_47
                        cmp              al, 72;                              jne   .Lx393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx393_47
                                                                              jmp   .Lx393_48
.Lx393_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx393_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx393_51
.Lx393_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx393_49
                        cmp              dl, 80;                              je    .Lx393_53
                                                                              jmp   .Lx393_52
.Lx393_49:              cmp              dl, 80;                              je    .Lx393_52
                        cmp              cl, 5;                               je    .Lx393_53
                        cmp              dl, 5;                               je    .Lx393_53
                        cmp              cl, 3;                               jne   .Lx393_50
                        cmp              dl, 3;                               jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx393_51
                                                                              jmp   .Lx393_52
.Lx393_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx393_53
.Lx393_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx393_54
.Lx393_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx393_54
.Lx393_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx393_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n354_call_builtin_prolog_α
                                                                              jmp   n347_var_ref_α
n346_call_builtin_prolog_β:
                        mov              r11, 149;                            jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n348_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 15
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n349_lit_string_α
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "set_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 11
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n350_var_ref_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n351_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
                        mov              r11, 154
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n354_call_builtin_prolog_α
                                                                              jmp   n352_call_builtin_prolog_α
n351_call_builtin_prolog_β:
                        mov              r11, 154;                            jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_prolog_α:
                        mov              r11, 155
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
.Lx401_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx401_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx401_41
                        cmp              esi, 1;                              jne   .Lx401_55
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_55:              cmp              esi, 2;                              jne   .Lx401_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx401_41
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_56:              cmp              al, 72;                              jne   .Lx401_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx401_41
                        cmp              rax, r8;                             je    .Lx401_41
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_41:              lea              r9, [rsp + 160]
.Lx401_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx401_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx401_43
                        cmp              esi, 1;                              jne   .Lx401_57
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_57:              cmp              esi, 2;                              jne   .Lx401_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx401_43
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_58:              cmp              al, 72;                              jne   .Lx401_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx401_43
                        cmp              rax, r9;                             je    .Lx401_43
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_43:              cmp              r8, r9;                              je    .Lx401_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx401_44
                        cmp              al, 104;                             je    .Lx401_44
                        cmp              al, 72;                              jne   .Lx401_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx401_44
                                                                              jmp   .Lx401_45
.Lx401_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx401_53
                        cmp              al, 104;                             je    .Lx401_53
                        cmp              al, 72;                              jne   .Lx401_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx401_53
                                                                              jmp   .Lx401_46
.Lx401_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx401_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx401_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx401_51
.Lx401_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx401_47
                        cmp              al, 104;                             je    .Lx401_47
                        cmp              al, 72;                              jne   .Lx401_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx401_47
                                                                              jmp   .Lx401_48
.Lx401_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx401_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx401_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx401_51
.Lx401_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx401_49
                        cmp              dl, 80;                              je    .Lx401_53
                                                                              jmp   .Lx401_52
.Lx401_49:              cmp              dl, 80;                              je    .Lx401_52
                        cmp              cl, 5;                               je    .Lx401_53
                        cmp              dl, 5;                               je    .Lx401_53
                        cmp              cl, 3;                               jne   .Lx401_50
                        cmp              dl, 3;                               jne   .Lx401_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx401_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx401_51
                                                                              jmp   .Lx401_52
.Lx401_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx401_53
.Lx401_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx401_54
.Lx401_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx401_54
.Lx401_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx401_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n354_call_builtin_prolog_α
                                                                              jmp   n353_suspend_α
n352_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:         mov              r11, 156
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx403_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248];         jmp   rax
.Lx403_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n353_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $2C$2F2_γ
n353_suspend_β:         mov              r11, 156;                            jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              r11, 157
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $2C$2F2_ω
                                                                              jmp   $2C$2F2_ω
n354_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   $2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_β:
                                                                              jmp   n342_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx404_50
                        mov              qword ptr [rsp + 1248], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248];         jmp   rax
.Lx404_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1336]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$2C$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1344]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_clause_gc$2F0:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 528
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
test_clause_gc$2F0_α_body:
                        lea              rax, [rip + n417_suspend_β]
                        mov              qword ptr [rsp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_prolog_α:
                        mov              r11, 158
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx419_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx419_101
.Lx419_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx419_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx419_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx419_101
.Lx419_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx419_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_clause_gc$2F0_ω
                                                                              jmp   n406_lit_string_α
n405_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n407_lit_string_α
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 19
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n408_lit_string_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 11
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n409_var_ref_α
.Lx422_0:               .quad            .Lx422_0_s
.Lx422_0_s:             .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n410_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_prolog_α:
                        mov              r11, 163
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    test_clause_gc$2F0_ω
                                                                              jmp   n411_lit_string_α
n410_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 15
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n412_lit_string_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "set_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 11
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n413_lit_integer_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n414_call_builtin_prolog_α
.Lx428_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_prolog_α:
                        mov              r11, 167
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    test_clause_gc$2F0_ω
                                                                              jmp   n415_call_builtin_prolog_α
n414_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n418_call_builtin_prolog_α
                                                                              jmp   n416_call_proc_staged_α
n415_call_builtin_prolog_β:
                        mov              r11, 168;                            jmp   n418_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        mov              r11, 169
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx432_200
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx432_201
.Lx432_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx432_201:             mov              rdi, qword ptr [rip + .Lx432_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx432_1
                        mov              rdi, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx432_4]
                        push             rcx
                        lea              rcx, [rip + .Lx432_3]
                        push             rcx;                                 jmp   rax
.Lx432_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx432_2
.Lx432_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx432_2
.Lx432_1:               call             rt_faildescr@PLT
.Lx432_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx432_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx432_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n418_call_builtin_prolog_α
                                                                              jmp   n417_suspend_α
n416_call_proc_staged_β:
                        mov              r11, 169;                            jmp   n418_call_builtin_prolog_α
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "setup_call_cleanup/1"
#-----------------------------------------------------------------------------------------------------------------------
n417_suspend_α:         mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx434_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx434_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n417_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n417_suspend_β]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_clause_gc$2F0_γ
n417_suspend_β:         mov              r11, 170;                            jmp   n416_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_clause_gc$2F0_ω
                                                                              jmp   test_clause_gc$2F0_ω
n418_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   test_clause_gc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_clause_gc$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_clause_gc$2F0_β:
                                                                              jmp   n417_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_clause_gc$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx435_50
                        mov              qword ptr [rsp + 480], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480];          jmp   rax
.Lx435_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 536]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_clause_gc$2F0_ω:
                        mov              rcx, qword ptr [rsp + 544]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 688
                        mov              qword ptr [rsp + 664], rcx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n452_suspend_β]
                        mov              qword ptr [rsp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              r11, 172
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx454_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx454_101
.Lx454_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx454_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx454_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx454_101
.Lx454_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx454_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                                                                              jmp   n437_lit_string_α
n436_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 14
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n438_lit_string_α
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n439_lit_string_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n440_lit_string_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 14
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n441_lit_integer_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n442_call_builtin_prolog_α
.Lx459_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_prolog_α:
                        mov              r11, 178
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                                                                              jmp   n443_lit_string_α
n442_call_builtin_prolog_β:
                        mov              r11, 178;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n444_lit_string_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n445_lit_string_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 14
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n446_lit_integer_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "test_clause_gc"
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n447_call_builtin_prolog_α
.Lx464_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              r11, 183
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                                                                              jmp   n448_lit_string_α
n447_call_builtin_prolog_β:
                        mov              r11, 183;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n449_call_builtin_prolog_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              r11, 185
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                                                                              jmp   n450_call_builtin_prolog_α
n449_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              r11, 186
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n453_call_builtin_prolog_α
                                                                              jmp   n451_call_proc_staged_α
n450_call_builtin_prolog_β:
                        mov              r11, 186;                            jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_proc_staged_α:
                        mov              r11, 187
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx470_200
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx470_201
.Lx470_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx470_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx470_202
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx470_203
.Lx470_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx470_203:             mov              rdi, qword ptr [rip + .Lx470_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx470_1
                        mov              rdi, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx470_4]
                        push             rcx
                        lea              rcx, [rip + .Lx470_3]
                        push             rcx;                                 jmp   rax
.Lx470_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx470_2
.Lx470_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx470_2
.Lx470_1:               call             rt_faildescr@PLT
.Lx470_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx470_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx470_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n453_call_builtin_prolog_α
                                                                              jmp   n452_suspend_α
n451_call_proc_staged_β:
                        mov              r11, 187;                            jmp   n453_call_builtin_prolog_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n452_suspend_α:         mov              r11, 188
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx472_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624];          jmp   rax
.Lx472_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n452_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n452_suspend_β]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n452_suspend_β:         mov              r11, 188;                            jmp   n451_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                                                                              jmp   pj_dir_0$2F0_ω
n453_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n452_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx473_50
                        mov              qword ptr [rsp + 624], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624];          jmp   rax
.Lx473_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 664]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 672]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cl$2F8:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
cl$2F8_α_body:
                        lea              rax, [rip + n484_suspend_β]
                        mov              qword ptr [rsp + 464], rax
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n475_var_ref_α
.Lx485_0:               .quad            .Lx485_0_s
.Lx485_0_s:             .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n479_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n482_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 128]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n483_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_gen_α:
                        mov              r11, 199
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 304], 0
.Lx502_60:              .section         .rodata
.Lbynamegenfn199:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn199]
                        lea              rsi, [rsp + 160]
                        mov              edx, 9
                        lea              rcx, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    cl$2F8_ω
                                                                              jmp   n484_suspend_α
n483_call_builtin_gen_β:
                        mov              r11, 199;                            jmp   .Lx502_60
#-----------------------------------------------------------------------------------------------------------------------
n484_suspend_α:         mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx504_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464];          jmp   rax
.Lx504_61:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        lea              rdx, [rip + n484_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n484_suspend_β]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   cl$2F8_γ
n484_suspend_β:         mov              r11, 200;                            jmp   n483_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
cl$2F8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cl$2F8_β:
                                                                              jmp   n483_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
cl$2F8_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx504_50
                        mov              qword ptr [rsp + 464], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464];          jmp   rax
.Lx504_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cl$2F8_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n511_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_prolog_α:
                        mov              r11, 201
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx513_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx513_101
.Lx513_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx513_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx513_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx513_101
.Lx513_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx513_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                                                                              jmp   n506_lit_string_α
n505_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n507_lit_string_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n508_lit_integer_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n509_call_builtin_prolog_α
.Lx516_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_prolog_α:
                        mov              r11, 205
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                                                                              jmp   n510_call_proc_staged_α
n509_call_builtin_prolog_β:
                        mov              r11, 205;                            jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_proc_staged_α:
                        mov              r11, 206
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx519_200
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx519_201
.Lx519_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_201:             mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx519_1
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx519_4]
                        push             rcx
                        lea              rcx, [rip + .Lx519_3]
                        push             rcx;                                 jmp   rax
.Lx519_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx519_2
.Lx519_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx519_2
.Lx519_1:               call             rt_faildescr@PLT
.Lx519_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx519_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx519_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                                                                              jmp   n511_suspend_α
n510_call_proc_staged_β:
                        mov              r11, 206;                            jmp   n512_call_builtin_prolog_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n511_suspend_α:         mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx521_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx521_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n511_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n511_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n511_suspend_β:         mov              r11, 207;                            jmp   n510_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              r11, 208
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                                                                              jmp   pj_dir_1$2F0_ω
n512_call_builtin_prolog_β:
                        mov              r11, 208;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n511_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx522_50
                        mov              qword ptr [rsp + 256], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx522_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__a$2F2:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 352
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
a$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        mov              r11, 209
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx533_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx533_101
.Lx533_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx533_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx533_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx533_101
.Lx533_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx533_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    a$2F2_ω
                                                                              jmp   n524_var_ref_α
n523_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n525_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n526_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        lea              r8, [rsp + 240]
.Lx538_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx538_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx538_41
                        cmp              esi, 1;                              jne   .Lx538_55
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_55:              cmp              esi, 2;                              jne   .Lx538_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx538_41
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_56:              cmp              al, 72;                              jne   .Lx538_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx538_41
                        cmp              rax, r8;                             je    .Lx538_41
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_41:              lea              r9, [rsp + 256]
.Lx538_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx538_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx538_43
                        cmp              esi, 1;                              jne   .Lx538_57
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_57:              cmp              esi, 2;                              jne   .Lx538_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx538_43
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_58:              cmp              al, 72;                              jne   .Lx538_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx538_43
                        cmp              rax, r9;                             je    .Lx538_43
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_43:              cmp              r8, r9;                              je    .Lx538_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx538_44
                        cmp              al, 104;                             je    .Lx538_44
                        cmp              al, 72;                              jne   .Lx538_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx538_44
                                                                              jmp   .Lx538_45
.Lx538_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx538_53
                        cmp              al, 104;                             je    .Lx538_53
                        cmp              al, 72;                              jne   .Lx538_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx538_53
                                                                              jmp   .Lx538_46
.Lx538_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx538_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx538_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx538_51
.Lx538_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx538_47
                        cmp              al, 104;                             je    .Lx538_47
                        cmp              al, 72;                              jne   .Lx538_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx538_47
                                                                              jmp   .Lx538_48
.Lx538_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx538_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx538_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx538_51
.Lx538_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx538_49
                        cmp              dl, 80;                              je    .Lx538_53
                                                                              jmp   .Lx538_52
.Lx538_49:              cmp              dl, 80;                              je    .Lx538_52
                        cmp              cl, 5;                               je    .Lx538_53
                        cmp              dl, 5;                               je    .Lx538_53
                        cmp              cl, 3;                               jne   .Lx538_50
                        cmp              dl, 3;                               jne   .Lx538_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx538_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx538_51
                                                                              jmp   .Lx538_52
.Lx538_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx538_53
.Lx538_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx538_54
.Lx538_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx538_54
.Lx538_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx538_54:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n532_call_builtin_prolog_α
                                                                              jmp   n527_var_ref_α
n526_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   n532_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n528_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n529_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              r11, 215
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        lea              r8, [rsp + 160]
.Lx543_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              esi, 1;                              jne   .Lx543_55
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_55:              cmp              esi, 2;                              jne   .Lx543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_56:              cmp              al, 72;                              jne   .Lx543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              rax, r8;                             je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_41:              lea              r9, [rsp + 176]
.Lx543_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              esi, 1;                              jne   .Lx543_57
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_57:              cmp              esi, 2;                              jne   .Lx543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_58:              cmp              al, 72;                              jne   .Lx543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              rax, r9;                             je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_43:              cmp              r8, r9;                              je    .Lx543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx543_44
                        cmp              al, 104;                             je    .Lx543_44
                        cmp              al, 72;                              jne   .Lx543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx543_44
                                                                              jmp   .Lx543_45
.Lx543_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx543_53
                        cmp              al, 104;                             je    .Lx543_53
                        cmp              al, 72;                              jne   .Lx543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_53
                                                                              jmp   .Lx543_46
.Lx543_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx543_51
.Lx543_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx543_47
                        cmp              al, 104;                             je    .Lx543_47
                        cmp              al, 72;                              jne   .Lx543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_47
                                                                              jmp   .Lx543_48
.Lx543_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx543_51
.Lx543_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx543_49
                        cmp              dl, 80;                              je    .Lx543_53
                                                                              jmp   .Lx543_52
.Lx543_49:              cmp              dl, 80;                              je    .Lx543_52
                        cmp              cl, 5;                               je    .Lx543_53
                        cmp              dl, 5;                               je    .Lx543_53
                        cmp              cl, 3;                               jne   .Lx543_50
                        cmp              dl, 3;                               jne   .Lx543_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx543_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx543_51
                                                                              jmp   .Lx543_52
.Lx543_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx543_53
.Lx543_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx543_54
.Lx543_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx543_54
.Lx543_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx543_54:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n532_call_builtin_prolog_α
                                                                              jmp   n530_move_label_α
n529_call_builtin_prolog_β:
                        mov              r11, 215;                            jmp   n532_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n530_move_label_α:      mov              r11, 216
                        lea              rax, [rip + n532_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   a$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n531_disjunction_α:     mov              r11, 217
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    a$2F2_ω
                                                                              jmp   rax
n531_disjunction_β:     mov              r11, 217;                            jmp   a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_prolog_α:
                        mov              r11, 218
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    a$2F2_ω
                                                                              jmp   a$2F2_ω
n532_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   a$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
a$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
a$2F2_β:
                                                                              jmp   n531_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
a$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 360]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F2_ω:
                        mov              rcx, qword ptr [rsp + 368]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F2_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx549_2]
                        lea              rdx, [rip + .Lx549_3];               jmp   FN__a$2F2
.Lx549_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx549_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__a$2F1:
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
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
a$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n550_call_builtin_prolog_α:
                        mov              r11, 219
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx557_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx557_101
.Lx557_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx557_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx557_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx557_101
.Lx557_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx557_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    a$2F1_ω
                                                                              jmp   n551_var_ref_α
n550_call_builtin_prolog_β:
                        mov              r11, 219;                            jmp   a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n552_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n553_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n553_call_builtin_prolog_α:
                        mov              r11, 222
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
.Lx562_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx562_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx562_41
                        cmp              esi, 1;                              jne   .Lx562_55
                        mov              r8, rax;                             jmp   .Lx562_40
.Lx562_55:              cmp              esi, 2;                              jne   .Lx562_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx562_41
                        mov              r8, rax;                             jmp   .Lx562_40
.Lx562_56:              cmp              al, 72;                              jne   .Lx562_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx562_41
                        cmp              rax, r8;                             je    .Lx562_41
                        mov              r8, rax;                             jmp   .Lx562_40
.Lx562_41:              lea              r9, [rsp + 160]
.Lx562_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx562_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx562_43
                        cmp              esi, 1;                              jne   .Lx562_57
                        mov              r9, rax;                             jmp   .Lx562_42
.Lx562_57:              cmp              esi, 2;                              jne   .Lx562_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx562_43
                        mov              r9, rax;                             jmp   .Lx562_42
.Lx562_58:              cmp              al, 72;                              jne   .Lx562_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx562_43
                        cmp              rax, r9;                             je    .Lx562_43
                        mov              r9, rax;                             jmp   .Lx562_42
.Lx562_43:              cmp              r8, r9;                              je    .Lx562_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx562_44
                        cmp              al, 104;                             je    .Lx562_44
                        cmp              al, 72;                              jne   .Lx562_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx562_44
                                                                              jmp   .Lx562_45
.Lx562_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx562_53
                        cmp              al, 104;                             je    .Lx562_53
                        cmp              al, 72;                              jne   .Lx562_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx562_53
                                                                              jmp   .Lx562_46
.Lx562_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx562_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx562_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx562_51
.Lx562_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx562_47
                        cmp              al, 104;                             je    .Lx562_47
                        cmp              al, 72;                              jne   .Lx562_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx562_47
                                                                              jmp   .Lx562_48
.Lx562_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx562_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx562_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx562_51
.Lx562_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx562_49
                        cmp              dl, 80;                              je    .Lx562_53
                                                                              jmp   .Lx562_52
.Lx562_49:              cmp              dl, 80;                              je    .Lx562_52
                        cmp              cl, 5;                               je    .Lx562_53
                        cmp              dl, 5;                               je    .Lx562_53
                        cmp              cl, 3;                               jne   .Lx562_50
                        cmp              dl, 3;                               jne   .Lx562_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx562_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx562_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx562_51
                                                                              jmp   .Lx562_52
.Lx562_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx562_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx562_53
.Lx562_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx562_54
.Lx562_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx562_54
.Lx562_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx562_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n556_call_builtin_prolog_α
                                                                              jmp   n554_move_label_α
n553_call_builtin_prolog_β:
                        mov              r11, 222;                            jmp   n556_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n554_move_label_α:      mov              r11, 223
                        lea              rax, [rip + n556_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   a$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n555_disjunction_α:     mov              r11, 224
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    a$2F1_ω
                                                                              jmp   rax
n555_disjunction_β:     mov              r11, 224;                            jmp   a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              r11, 225
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    a$2F1_ω
                                                                              jmp   a$2F1_ω
n556_call_builtin_prolog_β:
                        mov              r11, 225;                            jmp   a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_β:
                                                                              jmp   n555_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 248]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_ω:
                        mov              rcx, qword ptr [rsp + 256]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
a$2F1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx568_2]
                        lea              rdx, [rip + .Lx568_3];               jmp   FN__a$2F1
.Lx568_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx568_3:               pop              r12
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
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 192
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n570_lit_string_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 2
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n571_lit_integer_α
.Lx575_0:               .quad            .Lx575_0_s
.Lx575_0_s:             .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_integer_α:     mov              r11, 228
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n572_call_builtin_prolog_α
.Lx576_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_prolog_α:
                        mov              r11, 229
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n573_call_proc_staged_α
n572_call_builtin_prolog_β:
                        mov              r11, 229;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        mov              r11, 230
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx579_200
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx579_201
.Lx579_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx579_201:             mov              rdi, qword ptr [rip + .Lx579_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx579_1
                        mov              rdi, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx579_4]
                        push             rcx
                        lea              rcx, [rip + .Lx579_3]
                        push             rcx;                                 jmp   rax
.Lx579_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx579_2
.Lx579_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx579_2
.Lx579_1:               call             rt_faildescr@PLT
.Lx579_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx579_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx579_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n573_call_proc_staged_β:
                        mov              r11, 230;                            jmp   main_ω
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 200]
                        add              rsp, 224;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 208]
                        add              rsp, 224;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "clause/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "run/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__run$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            752
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "run/4"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__run$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            1664
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "current_prolog_flag/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__current_prolog_flag$2F2
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "gspace/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__gspace$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1408
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          ",/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__$2C$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1312
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "test_clause_gc/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__test_clause_gc$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            640
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "cl/8"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__cl$2F8
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            8
                        .long            0
                        .long            480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__pj_dir_1$2F0
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
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "a/2"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__a$2F2
                        .quad            a$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            336
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "a/1"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__a$2F1
                        .quad            a$2F1_dcα
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
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
