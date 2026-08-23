                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__stream_property$2F2:
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
stream_property$2F2_α_body:
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
.Lbynamegenfn3:         .string          "$stream_property"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    stream_property$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_suspend_α
n2_call_builtin_gen_β:  mov              r11, 3;                              jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:           mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx10_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n3_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   stream_property$2F2_γ
n3_suspend_β:           mov              r11, 4;                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
stream_property$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
stream_property$2F2_β:
                                                                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
stream_property$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx10_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
stream_property$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
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
                        sub              rsp, 3520
                        mov              qword ptr [rsp + 3496], rcx
                        mov              qword ptr [rsp + 3504], rdx
                        mov              qword ptr [rsp + 3512], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3488
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
n11_call_builtin_prolog_α:
                        mov              r11, 5
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx129_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx129_101
.Lx129_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx129_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx129_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx129_101
.Lx129_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx129_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 6
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 17
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n13_lit_string_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 7
                        mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n14_var_ref_α
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3336], rax
                        .section         .rodata
.Lrkfn135:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 3328]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx;         jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 4
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n18_lit_string_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n19_call_builtin_prolog_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3256], rax
                        lea              rdi, [rsp + 3248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n23_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_call_proc_staged_α
n19_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α: mov              r11, 14
                        mov              qword ptr [rsp + 3168], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx142_20
                        mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx142_21
.Lx142_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx142_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx142_22
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx142_23
.Lx142_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx142_23:              lea              rax, [rip + .Lx142_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx142_1
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4];               jmp   rax
.Lx142_3:               mov              qword ptr [rsp + 3176], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3168]
                        test             rax, rax;                            jne   .Lx142_5
                        mov              qword ptr [rsp + 3168], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx142_2
.Lx142_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx142_2
.Lx142_4:               mov              rax, qword ptr [rsp + 3168]
                        test             rax, rax;                            jne   .Lx142_6
                        mov              qword ptr [rsp + 3168], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx142_2
.Lx142_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx142_2
.Lx142_1:               call             rt_faildescr@PLT
.Lx142_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx142_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3120]
                        mov              rdx, qword ptr [rsp + 3128]
.Lx142_29:              mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n23_lit_string_α
                                                                              jmp   n21_lit_string_α
n20_call_proc_staged_β: mov              r11, 14
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3168], 0
                        lea              rdi, [rsp + 3184]
                        lea              rsi, [rsp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n23_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3184]
                        mov              rdx, qword ptr [rsp + 3192]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
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
                        test             rax, rax;                            je    n23_lit_string_α
                        lea              r8, [rip + .Lx142_7]
                        push             r8
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4];               jmp   rax
.Lx142_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    n23_lit_string_α
                                                                              jmp   n21_lit_string_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 13
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n22_call_builtin_prolog_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "mode_write_ok"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn145:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n22_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 14
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n24_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "mode_write_bad"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn148:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 0
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n26_call_builtin_prolog_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn151:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 6
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n29_call_proc_staged_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: mov              r11, 23
                        mov              qword ptr [rsp + 2912], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx156_20
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx156_21
.Lx156_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx156_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx156_22
                        mov              rax, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx156_23
.Lx156_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx156_23:              lea              rax, [rip + .Lx156_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx156_1
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4];               jmp   rax
.Lx156_3:               mov              qword ptr [rsp + 2920], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lx156_5
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx156_2
.Lx156_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx156_2
.Lx156_4:               mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lx156_6
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx156_2
.Lx156_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx156_2
.Lx156_1:               call             rt_faildescr@PLT
.Lx156_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx156_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lx156_29:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n32_lit_string_α
                                                                              jmp   n30_lit_string_α
n29_call_proc_staged_β: mov              r11, 23
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2912], 0
                        lea              rdi, [rsp + 2928]
                        lea              rsi, [rsp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n32_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
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
                        test             rax, rax;                            je    n32_lit_string_α
                        lea              r8, [rip + .Lx156_7]
                        push             r8
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4];               jmp   rax
.Lx156_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n32_lit_string_α
                                                                              jmp   n30_lit_string_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 9
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n31_call_builtin_prolog_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "is_output"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn159:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_lit_string_α
n31_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 10
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n33_call_builtin_prolog_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "not_output"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn162:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 0
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n35_call_builtin_prolog_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2744], rax
                        .section         .rodata
.Lrkfn165:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 2736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 5
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n38_call_proc_staged_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α: mov              r11, 32
                        mov              qword ptr [rsp + 2656], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx170_20
                        mov              rax, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx170_21
.Lx170_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx170_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx170_22
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx170_23
.Lx170_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx170_23:              lea              rax, [rip + .Lx170_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx170_1
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4];               jmp   rax
.Lx170_3:               mov              qword ptr [rsp + 2664], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lx170_5
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx170_2
.Lx170_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx170_2
.Lx170_4:               mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lx170_6
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx170_2
.Lx170_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx170_2
.Lx170_1:               call             rt_faildescr@PLT
.Lx170_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx170_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
.Lx170_29:              mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n41_lit_string_α
                                                                              jmp   n39_lit_string_α
n38_call_proc_staged_β: mov              r11, 32
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2656], 0
                        lea              rdi, [rsp + 2672]
                        lea              rsi, [rsp + 2680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n41_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
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
                        test             rax, rax;                            je    n41_lit_string_α
                        lea              r8, [rip + .Lx170_7]
                        push             r8
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4];               jmp   rax
.Lx170_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n41_lit_string_α
                                                                              jmp   n39_lit_string_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 9
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n40_call_builtin_prolog_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "bug_input"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn173:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rsp + 2528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n40_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 19
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n42_call_builtin_prolog_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "correctly_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2584], rax
                        .section         .rodata
.Lrkfn176:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rsp + 2576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 2496], 2            # result
                        mov              dword ptr [rsp + 2500], 0
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n44_call_builtin_prolog_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn179:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_var_ref_α
n44_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 4
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n47_lit_string_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 4
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n48_call_builtin_prolog_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        lea              rdi, [rsp + 2400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n52_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_call_proc_staged_α
n48_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α: mov              r11, 43
                        mov              qword ptr [rsp + 2320], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx186_20
                        mov              rax, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx186_21
.Lx186_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx186_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx186_22
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx186_23
.Lx186_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx186_23:              lea              rax, [rip + .Lx186_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx186_1
                        lea              rcx, [rip + .Lx186_3]
                        lea              rdx, [rip + .Lx186_4];               jmp   rax
.Lx186_3:               mov              qword ptr [rsp + 2328], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2320]
                        test             rax, rax;                            jne   .Lx186_5
                        mov              qword ptr [rsp + 2320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx186_2
.Lx186_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx186_2
.Lx186_4:               mov              rax, qword ptr [rsp + 2320]
                        test             rax, rax;                            jne   .Lx186_6
                        mov              qword ptr [rsp + 2320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx186_2
.Lx186_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx186_2
.Lx186_1:               call             rt_faildescr@PLT
.Lx186_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx186_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
.Lx186_29:              mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n52_lit_string_α
                                                                              jmp   n50_lit_string_α
n49_call_proc_staged_β: mov              r11, 43
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2320], 0
                        lea              rdi, [rsp + 2336]
                        lea              rsi, [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n52_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
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
                        test             rax, rax;                            je    n52_lit_string_α
                        lea              r8, [rip + .Lx186_7]
                        push             r8
                        lea              rcx, [rip + .Lx186_3]
                        lea              rdx, [rip + .Lx186_4];               jmp   rax
.Lx186_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n52_lit_string_α
                                                                              jmp   n50_lit_string_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 12
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n51_call_builtin_prolog_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "type_text_ok"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2200], rax
                        .section         .rodata
.Lrkfn189:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 2192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n51_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 13
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n53_call_builtin_prolog_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "type_text_bad"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn192:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 0
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n55_call_builtin_prolog_α
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn195:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_var_ref_α
n55_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 9
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n58_var_ref_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "file_name"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3456]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n65_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_call_proc_staged_α
n59_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_proc_staged_α: mov              r11, 54
                        mov              qword ptr [rsp + 1984], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx203_20
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx203_21
.Lx203_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx203_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx203_22
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx203_23
.Lx203_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx203_23:              lea              rax, [rip + .Lx203_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx203_1
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4];               jmp   rax
.Lx203_3:               mov              qword ptr [rsp + 1992], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1984]
                        test             rax, rax;                            jne   .Lx203_5
                        mov              qword ptr [rsp + 1984], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx203_2
.Lx203_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx203_2
.Lx203_4:               mov              rax, qword ptr [rsp + 1984]
                        test             rax, rax;                            jne   .Lx203_6
                        mov              qword ptr [rsp + 1984], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx203_2
.Lx203_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx203_2
.Lx203_1:               call             rt_faildescr@PLT
.Lx203_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx203_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
.Lx203_29:              mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n65_lit_string_α
                                                                              jmp   n61_var_ref_α
n60_call_proc_staged_β: mov              r11, 54
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1984], 0
                        lea              rdi, [rsp + 2000]
                        lea              rsi, [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n65_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
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
                        test             rax, rax;                            je    n65_lit_string_α
                        lea              r8, [rip + .Lx203_7]
                        push             r8
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4];               jmp   rax
.Lx203_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n65_lit_string_α
                                                                              jmp   n61_var_ref_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3456]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn207:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n60_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_lit_string_α
n62_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n60_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 13
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n64_call_builtin_prolog_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "has_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax
                        .section         .rodata
.Lrkfn210:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 1808]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n64_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 12
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n66_call_builtin_prolog_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "no_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn213:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 0
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n68_call_builtin_prolog_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn216:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_var_ref_α
n68_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 4
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n71_lit_string_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 4
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n72_call_builtin_prolog_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n76_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_call_proc_staged_α
n72_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α: mov              r11, 67
                        mov              qword ptr [rsp + 1600], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx223_20
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx223_21
.Lx223_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx223_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx223_22
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx223_23
.Lx223_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx223_23:              lea              rax, [rip + .Lx223_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx223_1
                        lea              rcx, [rip + .Lx223_3]
                        lea              rdx, [rip + .Lx223_4];               jmp   rax
.Lx223_3:               mov              qword ptr [rsp + 1608], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1600]
                        test             rax, rax;                            jne   .Lx223_5
                        mov              qword ptr [rsp + 1600], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx223_2
.Lx223_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx223_2
.Lx223_4:               mov              rax, qword ptr [rsp + 1600]
                        test             rax, rax;                            jne   .Lx223_6
                        mov              qword ptr [rsp + 1600], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx223_2
.Lx223_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx223_2
.Lx223_1:               call             rt_faildescr@PLT
.Lx223_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx223_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
.Lx223_29:              mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n76_lit_string_α
                                                                              jmp   n74_lit_string_α
n73_call_proc_staged_β: mov              r11, 67
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1600], 0
                        lea              rdi, [rsp + 1616]
                        lea              rsi, [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n76_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
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
                        test             rax, rax;                            je    n76_lit_string_α
                        lea              r8, [rip + .Lx223_7]
                        push             r8
                        lea              rcx, [rip + .Lx223_3]
                        lea              rdx, [rip + .Lx223_4];               jmp   rax
.Lx223_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n76_lit_string_α
                                                                              jmp   n74_lit_string_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 8
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n75_call_builtin_prolog_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "bug_read"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn226:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_lit_string_α
n75_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 18
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n77_call_builtin_prolog_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "correctly_not_read"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn229:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_lit_string_α
n77_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 0
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n79_call_builtin_prolog_α
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn232:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_var_α
n79_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 5
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n82_call_builtin_prolog_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn237:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_var_ref_α
n82_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn241:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_lit_string_α
n84_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 79
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 17
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n86_lit_string_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 4
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n87_var_ref_α
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn247:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 84
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n91_lit_string_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 85
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 4
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n92_call_builtin_prolog_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n96_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_call_proc_staged_α
n92_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α: mov              r11, 87
                        mov              qword ptr [rsp + 1024], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx254_20
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx254_21
.Lx254_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx254_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx254_22
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx254_23
.Lx254_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx254_23:              lea              rax, [rip + .Lx254_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx254_1
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4];               jmp   rax
.Lx254_3:               mov              qword ptr [rsp + 1032], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1024]
                        test             rax, rax;                            jne   .Lx254_5
                        mov              qword ptr [rsp + 1024], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx254_2
.Lx254_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx254_2
.Lx254_4:               mov              rax, qword ptr [rsp + 1024]
                        test             rax, rax;                            jne   .Lx254_6
                        mov              qword ptr [rsp + 1024], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx254_2
.Lx254_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx254_2
.Lx254_1:               call             rt_faildescr@PLT
.Lx254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
.Lx254_29:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n96_lit_string_α
                                                                              jmp   n94_lit_string_α
n93_call_proc_staged_β: mov              r11, 87
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1024], 0
                        lea              rdi, [rsp + 1040]
                        lea              rsi, [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n96_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
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
                        test             rax, rax;                            je    n96_lit_string_α
                        lea              r8, [rip + .Lx254_7]
                        push             r8
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4];               jmp   rax
.Lx254_7:               add              rsp, 8
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n96_lit_string_α
                                                                              jmp   n94_lit_string_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 12
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n95_call_builtin_prolog_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "read_mode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn257:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_lit_string_α
n95_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 13
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n97_call_builtin_prolog_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "read_mode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn260:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_lit_string_α
n97_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 92
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 0
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n99_call_builtin_prolog_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn263:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n102_call_proc_staged_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_proc_staged_α:
                        mov              r11, 96
                        mov              qword ptr [rsp + 768], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx268_20
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx268_21
.Lx268_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx268_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx268_22
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx268_23
.Lx268_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx268_23:              lea              rax, [rip + .Lx268_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4];               jmp   rax
.Lx268_3:               mov              qword ptr [rsp + 776], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx268_5
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx268_2
.Lx268_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx268_2
.Lx268_4:               mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx268_6
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx268_2
.Lx268_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx268_2
.Lx268_1:               call             rt_faildescr@PLT
.Lx268_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx268_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
.Lx268_29:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                                                                              jmp   n103_lit_string_α
n102_call_proc_staged_β:
                        mov              r11, 96
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 768], 0
                        lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n105_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
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
                        test             rax, rax;                            je    n105_lit_string_α
                        lea              r8, [rip + .Lx268_7]
                        push             r8
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4];               jmp   rax
.Lx268_7:               add              rsp, 8
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n105_lit_string_α
                                                                              jmp   n103_lit_string_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 13
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n104_call_builtin_prolog_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "read_is_input"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn271:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n104_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 14
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n106_call_builtin_prolog_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "read_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn274:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 0
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n108_call_builtin_prolog_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 13
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n111_lit_string_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "end_of_stream"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 3
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n112_call_builtin_prolog_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n116_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_call_proc_staged_α
n112_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              r11, 107
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx284_20
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx284_21
.Lx284_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx284_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx284_22
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx284_23
.Lx284_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx284_23:              lea              rax, [rip + .Lx284_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx284_1
                        lea              rcx, [rip + .Lx284_3]
                        lea              rdx, [rip + .Lx284_4];               jmp   rax
.Lx284_3:               mov              qword ptr [rsp + 440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx284_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx284_2
.Lx284_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx284_2
.Lx284_4:               mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx284_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx284_2
.Lx284_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx284_2
.Lx284_1:               call             rt_faildescr@PLT
.Lx284_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx284_29
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
.Lx284_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n116_lit_string_α
                                                                              jmp   n114_lit_string_α
n113_call_proc_staged_β:
                        mov              r11, 107
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 432], 0
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n116_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              ecx, 0
                        mov              r8d, 144
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
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
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
                        test             rax, rax;                            je    n116_lit_string_α
                        lea              r8, [rip + .Lx284_7]
                        push             r8
                        lea              rcx, [rip + .Lx284_3]
                        lea              rdx, [rip + .Lx284_4];               jmp   rax
.Lx284_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n116_lit_string_α
                                                                              jmp   n114_lit_string_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 16
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n115_call_builtin_prolog_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "nonempty_not_eof"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn287:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_lit_string_α
n115_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 7
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n117_call_builtin_prolog_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "eof_bad"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn290:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_lit_string_α
n117_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 0
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n119_call_builtin_prolog_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn293:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn297:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_lit_string_α
n121_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n123_call_builtin_prolog_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn300:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_lit_string_α
n123_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n125_call_builtin_prolog_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn303:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_move_label_α
n125_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_move_label_α:      mov              r11, 120
                        lea              rax, [rip + n128_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     mov              r11, 121
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n127_disjunction_β:     mov              r11, 121;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              r11, 122
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
n128_call_builtin_prolog_β:
                        mov              r11, 122;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3496]
                        add              rsp, 3520;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 3504]
                        add              rsp, 3520;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "stream_property/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__stream_property$2F2
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
