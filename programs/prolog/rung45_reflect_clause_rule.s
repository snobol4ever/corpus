                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:  mov              r11, 2
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], 0
.Lx5_60:                .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $call$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_suspend_α
n1_call_builtin_gen_β:  mov              r11, 2;                              jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:           mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx7_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_61:                mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n2_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $call$2F1_γ
n2_suspend_β:           mov              r11, 3;                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_β:
                                                                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx7_50
                        mov              qword ptr [rsp + 96], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_50:                mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
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
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n10_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_gen_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 96], 0
.Lx16_60:               .section         .rodata
.Lbynamegenfn6:         .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn6]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_suspend_α
n10_call_builtin_gen_β: mov              r11, 6;                              jmp   .Lx16_60
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx18_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx18_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n11_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n11_suspend_β:          mov              r11, 7;                              jmp   n10_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n10_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx18_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx18_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__greet$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
greet$2F0_α_body:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rsp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 8
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 5
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n20_call_builtin_gen_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_gen_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], 0
.Lx23_60:               .section         .rodata
.Lbynamegenfn9:         .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn9]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    greet$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_suspend_α
n20_call_builtin_gen_β: mov              r11, 9;                              jmp   .Lx23_60
#-----------------------------------------------------------------------------------------------------------------------
n21_suspend_α:          mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx25_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80];           jmp   rax
.Lx25_61:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n21_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   greet$2F0_γ
n21_suspend_β:          mov              r11, 10;                             jmp   n20_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
greet$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
greet$2F0_β:
                                                                              jmp   n20_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
greet$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx25_50
                        mov              qword ptr [rsp + 80], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80];           jmp   rax
.Lx25_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
greet$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
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
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 768
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
n26_call_builtin_prolog_α:
                        mov              r11, 11
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx49_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx49_101
.Lx49_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx49_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx49_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx49_101
.Lx49_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx49_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 2
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n28_lit_string_α
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 5
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n29_lit_string_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n30_lit_string_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 5
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n31_lit_string_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n32_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n34_call_builtin_prolog_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_call_builtin_prolog_α
n34_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn60:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_lit_string_α
n36_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 5
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n38_var_ref_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n39_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α: mov              r11, 24
                        mov              qword ptr [rsp + 320], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx65_20
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx65_21
.Lx65_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx65_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx65_22
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx65_23
.Lx65_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx65_23:               lea              rax, [rip + .Lx65_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx65_1
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4];                jmp   rax
.Lx65_3:                mov              qword ptr [rsp + 328], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx65_5
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx65_2
.Lx65_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx65_2
.Lx65_4:                mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx65_6
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx65_2
.Lx65_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx65_2
.Lx65_1:                call             rt_faildescr@PLT
.Lx65_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx65_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx65_29:               mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n42_lit_string_α
                                                                              jmp   n40_var_ref_α
n39_call_proc_staged_β: mov              r11, 24
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 320], 0
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n42_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n42_lit_string_α
                        lea              r8, [rip + .Lx65_7]
                        push             r8
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4];                jmp   rax
.Lx65_7:                add              rsp, 8
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n42_lit_string_α
                                                                              jmp   n40_var_ref_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n41_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 26
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx69_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx69_21
.Lx69_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx69_21:               lea              rax, [rip + .Lx69_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx69_1
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4];                jmp   rax
.Lx69_3:                mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx69_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx69_2
.Lx69_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx69_2
.Lx69_4:                mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx69_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx69_2
.Lx69_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx69_2
.Lx69_1:                call             rt_faildescr@PLT
.Lx69_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx69_29
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
.Lx69_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                                                                              jmp   n46_move_label_α
n41_call_proc_staged_β: mov              r11, 26
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n48_call_builtin_prolog_α
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
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n48_call_builtin_prolog_α
                        lea              r8, [rip + .Lx69_7]
                        push             r8
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4];                jmp   rax
.Lx69_7:                add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                                                                              jmp   n46_move_label_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 8
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n43_call_builtin_prolog_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "noclause"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn72:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_lit_string_α
n43_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 0
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n45_call_builtin_prolog_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn75:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n48_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_move_label_α
n45_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_move_label_α:       mov              r11, 31
                        lea              rax, [rip + n48_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:      mov              r11, 32
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n47_disjunction_β:      mov              r11, 32;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 33
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
n48_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 776]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 784]
                        add              rsp, 800;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "clause/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "greet/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__greet$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
