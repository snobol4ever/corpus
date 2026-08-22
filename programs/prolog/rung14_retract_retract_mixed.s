                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__fact$2F1:
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
fact$2F1_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 4
                        mov              rax, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1_var_ref_α
.Lx4_0:                 .quad            .Lx4_0_s
.Lx4_0_s:               .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:  mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 80], 0
.Lx7_60:                .section         .rodata
.Lbynamegenfn3:         .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        lea              rcx, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    fact$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_suspend_α
n2_call_builtin_gen_β:                                                        jmp   .Lx7_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx9_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx9_61:                mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n3_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   fact$2F1_γ
n3_suspend_β:                                                                 jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
fact$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fact$2F1_β:
                                                                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
fact$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx9_50
                        mov              qword ptr [rsp + 128], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx9_50:                mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fact$2F1_ω:
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
                        sub              rsp, 880
                        mov              qword ptr [rsp + 856], rcx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 848
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
n10_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx37_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx37_101
.Lx37_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx37_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx37_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx37_101
.Lx37_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx37_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_lit_string_α
n10_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 4
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n12_lit_integer_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n13_call_builtin_prolog_α
.Lx39_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn42:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 4
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n16_lit_integer_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n17_call_builtin_prolog_α
.Lx44_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_call_builtin_prolog_α
n17_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn47:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 4
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n20_lit_integer_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n21_call_builtin_prolog_α
.Lx49_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn52:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 4
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n24_lit_integer_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n25_call_builtin_prolog_α
.Lx54_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_call_builtin_prolog_α
n25_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn57:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                              jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n28_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α: mov              qword ptr [rsp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx61_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx61_21
.Lx61_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx61_21:               lea              rax, [rip + .Lx61_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx61_1
                        lea              rcx, [rip + .Lx61_3]
                        lea              rdx, [rip + .Lx61_4];                jmp   rax
.Lx61_3:                mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx61_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx61_2
.Lx61_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx61_2
.Lx61_4:                mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx61_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx61_2
.Lx61_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx61_2
.Lx61_1:                call             rt_faildescr@PLT
.Lx61_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx61_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx61_29:               mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                                                                              jmp   n29_var_α
n28_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n33_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 0
                        mov              r8d, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
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
                        test             rax, rax;                            je    n33_call_builtin_prolog_α
                        lea              r11, [rip + .Lx61_7]
                        push             r11
                        lea              rcx, [rip + .Lx61_3]
                        lea              rdx, [rip + .Lx61_4];                jmp   rax
.Lx61_7:                add              rsp, 8
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                                                                              jmp   n29_var_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "fact/1"
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 216], rax;          jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn65:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n28_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                              jmp   n28_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n32_call_builtin_prolog_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn68:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n28_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_call_proc_staged_β
n32_call_builtin_prolog_β:
                                                                              jmp   n28_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_move_label_α
n33_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_move_label_α:       lea              rax, [rip + n36_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n35_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
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
n36_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 856]
                        add              rsp, 880;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 864]
                        add              rsp, 880;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fact/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__fact$2F1
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
