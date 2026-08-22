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
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
clause$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:  mov              rax, qword ptr [rsp + 128]
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
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_suspend_α
n2_call_builtin_gen_β:                                                        jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:           mov              rax, qword ptr [rsp + 0]
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
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n3_suspend_β:                                                                 jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx10_50
                        mov              qword ptr [rsp + 144], r11
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
clause$2F2_ω:
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
n11_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx26_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx26_101
.Lx26_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx26_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx26_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx26_101
.Lx26_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx26_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n13_var_ref_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "ghost"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n19_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                                                                              jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n16_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α: mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx34_20
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx34_21
.Lx34_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx34_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx34_22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx34_23
.Lx34_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx34_23:               lea              rax, [rip + .Lx34_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx34_1
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4];                jmp   rax
.Lx34_3:                mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx34_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx34_2
.Lx34_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx34_2
.Lx34_4:                mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx34_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx34_2
.Lx34_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx34_2
.Lx34_1:                call             rt_faildescr@PLT
.Lx34_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx34_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx34_29:               mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n19_lit_string_α
                                                                              jmp   n17_lit_string_α
n16_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 288], 0
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n19_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
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
                        test             rax, rax;                            je    n19_lit_string_α
                        lea              r11, [rip + .Lx34_7]
                        push             r11
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4];                jmp   rax
.Lx34_7:                add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n19_lit_string_α
                                                                              jmp   n17_lit_string_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 5
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n18_call_builtin_prolog_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "found"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn37:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n25_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n18_call_builtin_prolog_β:
                                                                              jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n20_call_builtin_prolog_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "nofact"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn40:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n25_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                                                                              jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n22_call_builtin_prolog_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn43:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n25_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_move_label_α
n22_call_builtin_prolog_β:
                                                                              jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_move_label_α:       lea              rax, [rip + n25_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n24_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
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
n25_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n24_disjunction_α
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
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
