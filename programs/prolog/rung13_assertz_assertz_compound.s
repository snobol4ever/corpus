                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__person$2F2:
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
person$2F2_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx25_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx25_101
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
.Lx25_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx25_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    person$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   person$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 5
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n3_call_builtin_prolog_α
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "alice"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx29_2];      jmp   .Lx29_3
.Lx29_2:                .quad            .Lx29_2_s
.Lx29_2_s:              .string          "alice"
.Lx29_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n6_call_builtin_prolog_α
.Lx32_0:                .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        movabs           rsi, 30
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_suspend_α
n6_call_builtin_prolog_β:
                                                                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx35_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx35_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n7_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F2_γ
n7_suspend_β:                                                                 jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    person$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                              jmp   person$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 3
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n11_call_builtin_prolog_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "bob"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx40_2];      jmp   .Lx40_3
.Lx40_2:                .quad            .Lx40_2_s
.Lx40_2_s:              .string          "bob"
.Lx40_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n14_call_builtin_prolog_α
.Lx43_0:                .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        movabs           rsi, 25
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx46_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx46_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n15_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F2_γ
n15_suspend_β:                                                                jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    person$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                              jmp   person$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n19_call_builtin_prolog_α
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "carol"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx51_2];      jmp   .Lx51_3
.Lx51_2:                .quad            .Lx51_2_s
.Lx51_2_s:              .string          "carol"
.Lx51_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                              jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n22_call_builtin_prolog_α
.Lx54_0:                .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        movabs           rsi, 35
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n24_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_suspend_α
n22_call_builtin_prolog_β:
                                                                              jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx57_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx57_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n23_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F2_γ
n23_suspend_β:                                                                jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    person$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   person$2F2_ω
n24_call_builtin_prolog_β:
                                                                              jmp   person$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
person$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
person$2F2_β:
                                                                              jmp   n7_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
person$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx58_50
                        mov              qword ptr [rsp + 704], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx58_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
person$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
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
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 480
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx75_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx75_101
.Lx75_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx75_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx75_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx75_101
.Lx75_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx75_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n62_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_proc_staged_α: mov              qword ptr [rsp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx81_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx81_21
.Lx81_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx81_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx81_22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx81_23
.Lx81_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx81_23:               lea              rax, [rip + .Lx81_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx81_1
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4];                jmp   rax
.Lx81_3:                mov              qword ptr [rsp + 376], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx81_5
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx81_2
.Lx81_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx81_2
.Lx81_4:                mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx81_6
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx81_2
.Lx81_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx81_2
.Lx81_1:                call             rt_faildescr@PLT
.Lx81_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx81_29
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
.Lx81_29:               mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                                                                              jmp   n63_var_α
n62_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 368], 0
                        lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n71_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              ecx, 48
                        mov              r8d, 704
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n71_call_builtin_prolog_α
                        lea              r11, [rip + .Lx81_7]
                        push             r11
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4];                jmp   rax
.Lx81_7:                add              rsp, 8
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                                                                              jmp   n63_var_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "person/2"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 312], rax;          jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn85:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n62_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_lit_string_α
n64_call_builtin_prolog_β:
                                                                              jmp   n62_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n66_call_builtin_prolog_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n62_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_var_α
n66_call_builtin_prolog_β:
                                                                              jmp   n62_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 216], rax;          jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn92:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n62_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                                                                              jmp   n62_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n70_call_builtin_prolog_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn95:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n62_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_call_proc_staged_β
n70_call_builtin_prolog_β:
                                                                              jmp   n62_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_move_label_α
n71_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_move_label_α:       lea              rax, [rip + n74_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n73_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n73_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
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
n74_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n73_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "person/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__person$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
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
