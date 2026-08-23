                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__safe$2F1:
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rcx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
safe$2F1_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 368], rax
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
                        cmp              al, 104;                             je    safe$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   safe$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
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
.Lx18_41:               lea              r9, [rsp + 320]
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
.Lx18_54:               mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 264], rax;          jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n6_call_builtin_prolog_α
.Lx21_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_var_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 200], rax;          jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn26:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 0
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n10_call_builtin_prolog_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn29:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx31_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx31_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n11_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   safe$2F1_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n12_call_builtin_prolog_α
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
                        cmp              al, 104;                             je    safe$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   safe$2F1_ω
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   safe$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
safe$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
safe$2F1_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
safe$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx32_50
                        mov              qword ptr [rsp + 368], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx32_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 424]
                        add              rsp, 448;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
safe$2F1_ω:
                        mov              rcx, qword ptr [rsp + 432]
                        add              rsp, 448;                            jmp   rcx
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
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 448
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 14
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx48_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx48_101
.Lx48_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx48_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx48_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx48_101
.Lx48_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx48_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 16
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx51_102
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216];          jmp   .Lx51_101
.Lx51_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx51_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx51_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx51_101
.Lx51_100:              lea              rdi, [rsp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx51_101:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n47_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_lit_integer_α
n35_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n37_call_proc_staged_α
.Lx52_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α: mov              r11, 18
                        mov              qword ptr [rsp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx54_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx54_21
.Lx54_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx54_21:               lea              rax, [rip + .Lx54_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx54_1
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4];                jmp   rax
.Lx54_3:                mov              qword ptr [rsp + 376], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx54_5
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx54_2
.Lx54_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx54_2
.Lx54_4:                mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx54_6
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx54_2
.Lx54_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx54_2
.Lx54_1:                call             rt_faildescr@PLT
.Lx54_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx54_29
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
.Lx54_29:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                                                                              jmp   n41_lit_string_α
n37_call_proc_staged_β: mov              r11, 18
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 368], 0
                        lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n38_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              ecx, 32
                        mov              r8d, 368
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
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
                        test             rax, rax;                            je    n38_call_builtin_prolog_α
                        lea              r8, [rip + .Lx54_7]
                        push             r8
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4];                jmp   rax
.Lx54_7:                add              rsp, 8
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                                                                              jmp   n41_lit_string_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "safe/1"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn56:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n47_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 3
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n40_call_builtin_prolog_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "bad"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn59:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_lit_string_α
n40_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n42_call_builtin_prolog_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn62:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n47_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n44_call_builtin_prolog_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn65:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n47_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_move_label_α
n44_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_move_label_α:       mov              r11, 26
                        lea              rax, [rip + n47_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:      mov              r11, 27
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n46_disjunction_β:      mov              r11, 27;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 28
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
n47_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 456]
                        add              rsp, 480;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 464]
                        add              rsp, 480;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "safe/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__safe$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            400
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
