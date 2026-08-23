                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F1:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test$2F1_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx8_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx8_101
.Lx8_102:               lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx8_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx8_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx8_101
.Lx8_100:               lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx8_101:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 11
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n3_call_builtin_prolog_α
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              rsi, qword ptr [rip + .Lx12_2];      jmp   .Lx12_3
.Lx12_2:                .quad            .Lx12_2_s
.Lx12_2_s:              .string          "abolish_cgc"
.Lx12_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_lit_integer_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_call_proc_staged_α
.Lx13_0:                .quad            50000
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        mov              qword ptr [rsp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx15_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx15_21
.Lx15_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx15_21:               lea              rax, [rip + .Lx15_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx15_1
                        lea              rcx, [rip + .Lx15_3]
                        lea              rdx, [rip + .Lx15_4];                jmp   rax
.Lx15_3:                mov              qword ptr [rsp + 136], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx15_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx15_2
.Lx15_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx15_2
.Lx15_4:                mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx15_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx15_2
.Lx15_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx15_2
.Lx15_1:                call             rt_faildescr@PLT
.Lx15_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx15_29
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
.Lx15_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n6_suspend_α
n5_call_proc_staged_β:  mov              r11, 6
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 128], 0
                        lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              ecx, 32
                        mov              r8d, 368
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
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n7_call_builtin_prolog_α
                        lea              r8, [rip + .Lx15_7]
                        push             r8
                        lea              rcx, [rip + .Lx15_3]
                        lea              rdx, [rip + .Lx15_4];                jmp   rax
.Lx15_7:                add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n6_suspend_α
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          "run_abolish_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx17_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx17_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n6_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   test$2F1_γ
n6_suspend_β:           mov              r11, 7;                              jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
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
                        cmp              al, 104;                             je    test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test$2F1_ω
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx18_50
                        mov              qword ptr [rsp + 256], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx18_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F1_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__create_delete$2F0:
                        sub              rsp, 3728
                        mov              qword ptr [rsp + 3704], rcx
                        mov              qword ptr [rsp + 3712], rdx
                        mov              qword ptr [rsp + 3720], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3696
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 40
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
create_delete$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 9
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx120_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx120_101
.Lx120_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx120_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx120_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx120_101
.Lx120_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx120_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    create_delete$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_lit_string_α
n19_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 10
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 12
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n21_var_ref_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3616]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3632]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3648]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 3000], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_call_builtin_prolog_α
n25_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2840], rax
                        .section         .rodata
.Lrkfn132:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 2832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 12
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n28_var_ref_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3520]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3536]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3552]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3568]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3584]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3600]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_call_builtin_prolog_α
n34_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2552], rax
                        .section         .rodata
.Lrkfn148:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_lit_string_α
n35_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 12
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n37_var_ref_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3472]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3488]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3504]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2440], rax
                        lea              rdi, [rsp + 2432]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_call_builtin_prolog_α
n40_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn158:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_lit_string_α
n41_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 12
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n43_var_ref_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3392]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3408]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3440]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3456]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2216], rax
                        lea              rdi, [rsp + 2208]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn172:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 14
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n51_var_ref_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3344]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3360]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1960], rax
                        lea              rdi, [rsp + 1952]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_call_builtin_prolog_α
n56_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1848], rax
                        .section         .rodata
.Lrkfn186:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_lit_string_α
n57_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 12
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n59_var_ref_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3216]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3232]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3248]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3264]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3296]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              esi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_call_builtin_prolog_α
n65_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1560], rax
                        .section         .rodata
.Lrkfn202:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 1552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 12
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n68_var_ref_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3136]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3152]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3168]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3200]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_call_builtin_prolog_α
n73_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn216:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_lit_string_α
n74_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 13
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n76_var_ref_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3088]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3104]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3120]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_call_builtin_prolog_α
n79_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn226:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_lit_string_α
n80_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 14
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n82_var_ref_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3040]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3056]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3072]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_call_builtin_prolog_α
n85_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn236:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 12
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n88_lit_integer_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 78
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n89_call_builtin_prolog_α
.Lx238_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn240:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_lit_string_α
n89_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 12
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n91_lit_integer_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              r11, 81
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n92_call_builtin_prolog_α
.Lx242_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn244:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_lit_string_α
n92_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 12
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n94_lit_integer_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n95_call_builtin_prolog_α
.Lx246_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn248:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rsp + 672]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_lit_string_α
n95_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 12
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n97_lit_integer_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              r11, 87
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n98_call_builtin_prolog_α
.Lx250_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn252:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_lit_string_α
n98_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 14
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n100_lit_integer_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n101_call_builtin_prolog_α
.Lx254_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn256:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_lit_string_α
n101_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 12
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n103_lit_integer_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n104_call_builtin_prolog_α
.Lx258_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn260:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_lit_string_α
n104_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 12
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n106_lit_integer_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     mov              r11, 96
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n107_call_builtin_prolog_α
.Lx262_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn264:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_lit_string_α
n107_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 13
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n109_lit_integer_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "$xpto#0._ddcl"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n110_call_builtin_prolog_α
.Lx266_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn268:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_lit_string_α
n110_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 13
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n112_lit_integer_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n113_call_builtin_prolog_α
.Lx270_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 103
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn272:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_lit_string_α
n113_call_builtin_prolog_β:
                        mov              r11, 103;                            jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 14
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n115_lit_integer_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n116_call_builtin_prolog_α
.Lx274_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn276:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n119_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_move_label_α
n116_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_move_label_α:      mov              r11, 107
                        lea              rax, [rip + n119_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   create_delete$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n118_disjunction_α:     mov              r11, 108
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    create_delete$2F0_ω
                                                                              jmp   rax
n118_disjunction_β:     mov              r11, 108;                            jmp   create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    create_delete$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   create_delete$2F0_ω
n119_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
create_delete$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
create_delete$2F0_β:
                                                                              jmp   n118_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
create_delete$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3704]
                        add              rsp, 3728;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
create_delete$2F0_ω:
                        mov              rcx, qword ptr [rsp + 3712]
                        add              rsp, 3728;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
create_delete$2F0_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx282_2]
                        lea              rdx, [rip + .Lx282_3];               jmp   FN__create_delete$2F0
.Lx282_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx282_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_test$2F4:
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rcx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 592
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        mov              r11, 110
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx301_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx301_101
.Lx301_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx301_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx301_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx301_101
.Lx301_100:             lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx301_101:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_var_ref_α
n283_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 11
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n286_call_builtin_prolog_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              rsi, qword ptr [rip + .Lx305_2];     jmp   .Lx305_3
.Lx305_2:               .quad            .Lx305_2_s
.Lx305_2_s:             .string          "abolish_cgc"
.Lx305_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n300_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_var_ref_α
n286_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n288_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n289_call_builtin_prolog_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              r11, 116
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx309_2];     jmp   .Lx309_3
.Lx309_2:               .quad            .Lx309_2_s
.Lx309_2_s:             .string          "abolish_cgc"
.Lx309_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n300_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 2
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n292_call_builtin_prolog_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx313_2];     jmp   .Lx313_3
.Lx313_2:               .quad            .Lx313_2_s
.Lx313_2_s:             .string          "[]"
.Lx313_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n300_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n293_var_ref_α
n292_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n294_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 16
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n295_lit_integer_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "run_abolish_test"
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n296_call_builtin_prolog_α
.Lx317_0:               .quad            50000
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n300_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n297_call_builtin_prolog_α
n296_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx319_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx319_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx319_41
                        cmp              esi, 1;                              jne   .Lx319_55
                        mov              r8, rax;                             jmp   .Lx319_40
.Lx319_55:              cmp              esi, 2;                              jne   .Lx319_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx319_41
                        mov              r8, rax;                             jmp   .Lx319_40
.Lx319_56:              cmp              al, 72;                              jne   .Lx319_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx319_41
                        cmp              rax, r8;                             je    .Lx319_41
                        mov              r8, rax;                             jmp   .Lx319_40
.Lx319_41:              lea              r9, [rsp + 208]
.Lx319_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx319_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx319_43
                        cmp              esi, 1;                              jne   .Lx319_57
                        mov              r9, rax;                             jmp   .Lx319_42
.Lx319_57:              cmp              esi, 2;                              jne   .Lx319_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx319_43
                        mov              r9, rax;                             jmp   .Lx319_42
.Lx319_58:              cmp              al, 72;                              jne   .Lx319_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx319_43
                        cmp              rax, r9;                             je    .Lx319_43
                        mov              r9, rax;                             jmp   .Lx319_42
.Lx319_43:              cmp              r8, r9;                              je    .Lx319_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx319_44
                        cmp              al, 104;                             je    .Lx319_44
                        cmp              al, 72;                              jne   .Lx319_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx319_44
                                                                              jmp   .Lx319_45
.Lx319_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx319_53
                        cmp              al, 104;                             je    .Lx319_53
                        cmp              al, 72;                              jne   .Lx319_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx319_53
                                                                              jmp   .Lx319_46
.Lx319_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx319_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx319_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx319_51
.Lx319_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx319_47
                        cmp              al, 104;                             je    .Lx319_47
                        cmp              al, 72;                              jne   .Lx319_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx319_47
                                                                              jmp   .Lx319_48
.Lx319_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx319_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx319_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx319_51
.Lx319_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx319_49
                        cmp              dl, 80;                              je    .Lx319_53
                                                                              jmp   .Lx319_52
.Lx319_49:              cmp              dl, 80;                              je    .Lx319_52
                        cmp              cl, 5;                               je    .Lx319_53
                        cmp              dl, 5;                               je    .Lx319_53
                        cmp              cl, 3;                               jne   .Lx319_50
                        cmp              dl, 3;                               jne   .Lx319_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx319_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx319_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx319_51
                                                                              jmp   .Lx319_52
.Lx319_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx319_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx319_53
.Lx319_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx319_54
.Lx319_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx319_54
.Lx319_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx319_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n300_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n298_move_label_α
n297_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n300_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n298_move_label_α:      mov              r11, 125
                        lea              rax, [rip + n300_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:     mov              r11, 126
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    pj_test$2F4_ω
                                                                              jmp   rax
n299_disjunction_β:     mov              r11, 126;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    pj_test$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_test$2F4_ω
n300_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_β:
                                                                              jmp   n299_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 600]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_ω:
                        mov              rcx, qword ptr [rsp + 608]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_test$2F4_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r8
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
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx325_2]
                        lea              rdx, [rip + .Lx325_3];               jmp   FN__pj_test$2F4
.Lx325_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx325_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__between$2F3:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 224
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
between$2F3_α_body:
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rsp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n329_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_gen_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 128], 0
.Lx337_60:              .section         .rodata
.Lbynamegenfn131:       .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]
                        lea              rsi, [rsp + 80]
                        mov              edx, 3
                        lea              rcx, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    between$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_suspend_α
n329_call_builtin_gen_β:
                        mov              r11, 131;                            jmp   .Lx337_60
#-----------------------------------------------------------------------------------------------------------------------
n330_suspend_α:         mov              r11, 132
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx339_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192];          jmp   rax
.Lx339_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n330_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   between$2F3_γ
n330_suspend_β:         mov              r11, 132;                            jmp   n329_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
between$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
between$2F3_β:
                                                                              jmp   n329_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
between$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx339_50
                        mov              qword ptr [rsp + 192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192];          jmp   rax
.Lx339_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
between$2F3_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__run_abolish_test$2F1:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
run_abolish_test$2F1_α_body:
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        mov              r11, 133
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx351_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx351_101
.Lx351_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx351_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx351_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx351_101
.Lx351_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx351_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    run_abolish_test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n341_var_ref_α
n340_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   run_abolish_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              r11, 136
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
.Lx356_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx356_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx356_41
                        cmp              esi, 1;                              jne   .Lx356_55
                        mov              r8, rax;                             jmp   .Lx356_40
.Lx356_55:              cmp              esi, 2;                              jne   .Lx356_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx356_41
                        mov              r8, rax;                             jmp   .Lx356_40
.Lx356_56:              cmp              al, 72;                              jne   .Lx356_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx356_41
                        cmp              rax, r8;                             je    .Lx356_41
                        mov              r8, rax;                             jmp   .Lx356_40
.Lx356_41:              lea              r9, [rsp + 320]
.Lx356_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx356_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx356_43
                        cmp              esi, 1;                              jne   .Lx356_57
                        mov              r9, rax;                             jmp   .Lx356_42
.Lx356_57:              cmp              esi, 2;                              jne   .Lx356_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx356_43
                        mov              r9, rax;                             jmp   .Lx356_42
.Lx356_58:              cmp              al, 72;                              jne   .Lx356_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx356_43
                        cmp              rax, r9;                             je    .Lx356_43
                        mov              r9, rax;                             jmp   .Lx356_42
.Lx356_43:              cmp              r8, r9;                              je    .Lx356_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx356_44
                        cmp              al, 104;                             je    .Lx356_44
                        cmp              al, 72;                              jne   .Lx356_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx356_44
                                                                              jmp   .Lx356_45
.Lx356_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx356_53
                        cmp              al, 104;                             je    .Lx356_53
                        cmp              al, 72;                              jne   .Lx356_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx356_53
                                                                              jmp   .Lx356_46
.Lx356_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx356_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx356_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx356_51
.Lx356_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx356_47
                        cmp              al, 104;                             je    .Lx356_47
                        cmp              al, 72;                              jne   .Lx356_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx356_47
                                                                              jmp   .Lx356_48
.Lx356_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx356_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx356_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx356_51
.Lx356_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx356_49
                        cmp              dl, 80;                              je    .Lx356_53
                                                                              jmp   .Lx356_52
.Lx356_49:              cmp              dl, 80;                              je    .Lx356_52
                        cmp              cl, 5;                               je    .Lx356_53
                        cmp              dl, 5;                               je    .Lx356_53
                        cmp              cl, 3;                               jne   .Lx356_50
                        cmp              dl, 3;                               jne   .Lx356_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx356_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx356_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx356_51
                                                                              jmp   .Lx356_52
.Lx356_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx356_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx356_53
.Lx356_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx356_54
.Lx356_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx356_54
.Lx356_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx356_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n350_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n344_lit_integer_α
n343_call_builtin_prolog_β:
                        mov              r11, 136;                            jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n345_var_ref_α
.Lx357_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n347_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_proc_staged_α:
                        mov              r11, 140
                        mov              qword ptr [rsp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx363_20
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx363_21
.Lx363_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx363_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx363_22
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx363_23
.Lx363_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx363_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx363_24
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx363_25
.Lx363_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx363_25:              lea              rax, [rip + .Lx363_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx363_1
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4];               jmp   rax
.Lx363_3:               mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx363_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx363_2
.Lx363_4:               mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx363_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx363_2
.Lx363_1:               call             rt_faildescr@PLT
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx363_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n349_suspend_α
                                                                              jmp   n348_call_proc_staged_α
n347_call_proc_staged_β:
                        mov              r11, 140
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 208], 0
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n349_suspend_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              ecx, 0
                        mov              r8d, 192
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
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n349_suspend_α
                        lea              r8, [rip + .Lx363_7]
                        push             r8
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4];               jmp   rax
.Lx363_7:               add              rsp, 8
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n349_suspend_α
                                                                              jmp   n348_call_proc_staged_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        mov              r11, 141
                        call             create_delete$2F0_dcα;               jmp   .Lx365_2
.Lx365_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx365_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx365_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n350_call_builtin_prolog_α
                                                                              jmp   n347_call_proc_staged_β
n348_call_proc_staged_β:
                        mov              r11, 141;                            jmp   n350_call_builtin_prolog_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "create_delete/0"
#-----------------------------------------------------------------------------------------------------------------------
n349_suspend_α:         mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx367_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx367_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n349_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   run_abolish_test$2F1_γ
n349_suspend_β:         mov              r11, 142;                            jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_prolog_α:
                        mov              r11, 143
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
                        cmp              al, 104;                             je    run_abolish_test$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   run_abolish_test$2F1_ω
n350_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   run_abolish_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
run_abolish_test$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
run_abolish_test$2F1_β:
                                                                              jmp   n349_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
run_abolish_test$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx368_50
                        mov              qword ptr [rsp + 368], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx368_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
run_abolish_test$2F1_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test_abolish$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
test_abolish$2F0_α_body:
                        lea              rax, [rip + n375_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_prolog_α:
                        mov              r11, 144
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx377_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx377_101
.Lx377_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx377_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx377_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx377_101
.Lx377_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx377_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    test_abolish$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n370_lit_string_α
n369_call_builtin_prolog_β:
                        mov              r11, 144;                            jmp   test_abolish$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n371_lit_string_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 11
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n372_lit_string_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n373_call_builtin_prolog_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n374_call_proc_staged_α
n373_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        mov              r11, 149
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx383_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx383_21
.Lx383_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx383_21:              mov              rdi, qword ptr [rip + .Lx383_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx383_1
                        mov              rdi, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx383_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx383_3]
                        push             rcx
                        lea              rcx, [rip + .Lx383_3]
                        lea              rdx, [rip + .Lx383_4];               jmp   rax
.Lx383_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx383_2
.Lx383_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx383_2
.Lx383_1:               call             rt_faildescr@PLT
.Lx383_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx383_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx383_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                                                                              jmp   n375_suspend_α
n374_call_proc_staged_β:
                        mov              r11, 149;                            jmp   n376_call_builtin_prolog_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n375_suspend_α:         mov              r11, 150
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx385_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx385_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n375_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n375_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   test_abolish$2F0_γ
n375_suspend_β:         mov              r11, 150;                            jmp   n374_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
                        mov              r11, 151
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    test_abolish$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   test_abolish$2F0_ω
n376_call_builtin_prolog_β:
                        mov              r11, 151;                            jmp   test_abolish$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
test_abolish$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test_abolish$2F0_β:
                                                                              jmp   n375_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test_abolish$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx386_50
                        mov              qword ptr [rsp + 256], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx386_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test_abolish$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
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
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n390_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_prolog_α:
                        mov              r11, 152
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx392_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx392_101
.Lx392_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx392_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx392_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx392_101
.Lx392_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx392_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n388_lit_string_α
n387_call_builtin_prolog_β:
                        mov              r11, 152;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 11
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n389_call_proc_staged_α
.Lx393_0:               .quad            .Lx393_0_s
.Lx393_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_proc_staged_α:
                        mov              r11, 154
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx395_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx395_21
.Lx395_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx395_21:              mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx395_1
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx395_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx395_3]
                        push             rcx
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4];               jmp   rax
.Lx395_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx395_2
.Lx395_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx395_2
.Lx395_1:               call             rt_faildescr@PLT
.Lx395_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx395_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx395_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n391_call_builtin_prolog_α
                                                                              jmp   n390_suspend_α
n389_call_proc_staged_β:
                        mov              r11, 154;                            jmp   n391_call_builtin_prolog_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n390_suspend_α:         mov              r11, 155
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx397_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx397_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n390_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n390_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n390_suspend_β:         mov              r11, 155;                            jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_prolog_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_2$2F0_ω
n391_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n390_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx398_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx398_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_prolog_α:
                        mov              r11, 157
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx411_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx411_101
.Lx411_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx411_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx411_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx411_101
.Lx411_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx411_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n400_lit_string_α
n399_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 12
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n401_lit_string_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "test_abolish"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n402_lit_string_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n403_lit_string_α
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 12
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n404_lit_integer_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "test_abolish"
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n405_call_builtin_prolog_α
.Lx416_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_prolog_α:
                        mov              r11, 163
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n406_lit_string_α
n405_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n407_call_builtin_prolog_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_prolog_α:
                        mov              r11, 165
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n410_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n408_call_proc_staged_α
n407_call_builtin_prolog_β:
                        mov              r11, 165;                            jmp   n410_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        mov              r11, 166
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx421_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx421_21
.Lx421_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx421_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx421_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx421_23
.Lx421_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx421_23:              mov              rdi, qword ptr [rip + .Lx421_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx421_1
                        mov              rdi, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx421_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx421_3]
                        push             rcx
                        lea              rcx, [rip + .Lx421_3]
                        lea              rdx, [rip + .Lx421_4];               jmp   rax
.Lx421_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx421_2
.Lx421_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx421_2
.Lx421_1:               call             rt_faildescr@PLT
.Lx421_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx421_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx421_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n410_call_builtin_prolog_α
                                                                              jmp   n409_suspend_α
n408_call_proc_staged_β:
                        mov              r11, 166;                            jmp   n410_call_builtin_prolog_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n409_suspend_α:         mov              r11, 167
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx423_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx423_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n409_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n409_suspend_β:         mov              r11, 167;                            jmp   n408_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_prolog_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_0$2F0_ω
n410_call_builtin_prolog_β:
                        mov              r11, 168;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n409_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx424_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx424_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
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
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n428_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              r11, 169
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx430_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx430_101
.Lx430_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx430_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx430_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx430_101
.Lx430_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx430_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n426_lit_string_α
n425_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 11
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n427_call_proc_staged_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n427_call_proc_staged_α:
                        mov              r11, 171
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx433_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx433_21
.Lx433_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx433_21:              mov              rdi, qword ptr [rip + .Lx433_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx433_1
                        mov              rdi, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx433_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx433_3]
                        push             rcx
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4];               jmp   rax
.Lx433_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx433_2
.Lx433_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx433_2
.Lx433_1:               call             rt_faildescr@PLT
.Lx433_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx433_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx433_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n429_call_builtin_prolog_α
                                                                              jmp   n428_suspend_α
n427_call_proc_staged_β:
                        mov              r11, 171;                            jmp   n429_call_builtin_prolog_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n428_suspend_α:         mov              r11, 172
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx435_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx435_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n428_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n428_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n428_suspend_β:         mov              r11, 172;                            jmp   n427_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_3$2F0_ω
n429_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n428_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx436_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx436_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n442_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              r11, 174
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx444_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx444_101
.Lx444_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx444_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx444_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx444_101
.Lx444_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx444_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n438_lit_string_α
n437_call_builtin_prolog_β:
                        mov              r11, 174;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n439_lit_string_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 6
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n440_call_builtin_prolog_α
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n443_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n441_call_proc_staged_α
n440_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        mov              r11, 178
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx449_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx449_21
.Lx449_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx449_21:              mov              rdi, qword ptr [rip + .Lx449_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx449_1
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx449_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx449_3]
                        push             rcx
                        lea              rcx, [rip + .Lx449_3]
                        lea              rdx, [rip + .Lx449_4];               jmp   rax
.Lx449_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx449_2
.Lx449_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx449_2
.Lx449_1:               call             rt_faildescr@PLT
.Lx449_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx449_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx449_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n443_call_builtin_prolog_α
                                                                              jmp   n442_suspend_α
n441_call_proc_staged_β:
                        mov              r11, 178;                            jmp   n443_call_builtin_prolog_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n442_suspend_α:         mov              r11, 179
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx451_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx451_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n442_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n442_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n442_suspend_β:         mov              r11, 179;                            jmp   n441_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_1$2F0_ω
n443_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n442_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx452_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx452_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._dcl$2F4:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 304
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._dcl$2F4_α_body:
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rsp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 12
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n454_var_ref_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n455_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n458_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_gen_α:
                        mov              r11, 186
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 176], 0
.Lx469_60:              .section         .rodata
.Lbynamegenfn186:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn186]
                        lea              rsi, [rsp + 96]
                        mov              edx, 5
                        lea              rcx, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $xpto$230._dcl$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n459_suspend_α
n458_call_builtin_gen_β:
                        mov              r11, 186;                            jmp   .Lx469_60
#-----------------------------------------------------------------------------------------------------------------------
n459_suspend_α:         mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx471_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272];          jmp   rax
.Lx471_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n459_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._dcl$2F4_γ
n459_suspend_β:         mov              r11, 187;                            jmp   n458_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F4_β:
                                                                              jmp   n458_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx471_50
                        mov              qword ptr [rsp + 272], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272];          jmp   rax
.Lx471_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F4_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._dcl$2F6:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 400
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._dcl$2F6_α_body:
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 12
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n473_var_ref_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n474_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n475_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n479_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_gen_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 240], 0
.Lx494_60:              .section         .rodata
.Lbynamegenfn195:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn195]
                        lea              rsi, [rsp + 128]
                        mov              edx, 7
                        lea              rcx, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    $xpto$230._dcl$2F6_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n480_suspend_α
n479_call_builtin_gen_β:
                        mov              r11, 195;                            jmp   .Lx494_60
#-----------------------------------------------------------------------------------------------------------------------
n480_suspend_α:         mov              r11, 196
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx496_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx496_61:              mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        lea              rdx, [rip + n480_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._dcl$2F6_γ
n480_suspend_β:         mov              r11, 196;                            jmp   n479_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F6_β:
                                                                              jmp   n479_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F6_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx496_50
                        mov              qword ptr [rsp + 368], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx496_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._dcl$2F6_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._def$2F3:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._def$2F3_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 12
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n498_var_ref_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n500_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n501_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_gen_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 144], 0
.Lx510_60:              .section         .rodata
.Lbynamegenfn201:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn201]
                        lea              rsi, [rsp + 80]
                        mov              edx, 4
                        lea              rcx, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $xpto$230._def$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n502_suspend_α
n501_call_builtin_gen_β:
                        mov              r11, 201;                            jmp   .Lx510_60
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:         mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx512_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx512_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n502_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._def$2F3_γ
n502_suspend_β:         mov              r11, 202;                            jmp   n501_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F3_β:
                                                                              jmp   n501_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx512_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx512_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F3_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._def$2F5:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 352
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._def$2F5_α_body:
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rsp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 12
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n514_var_ref_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n515_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n516_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n518_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n519_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_gen_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 208], 0
.Lx532_60:              .section         .rodata
.Lbynamegenfn209:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn209]
                        lea              rsi, [rsp + 112]
                        mov              edx, 6
                        lea              rcx, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $xpto$230._def$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n520_suspend_α
n519_call_builtin_gen_β:
                        mov              r11, 209;                            jmp   .Lx532_60
#-----------------------------------------------------------------------------------------------------------------------
n520_suspend_α:         mov              r11, 210
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx534_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx534_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n520_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._def$2F5_γ
n520_suspend_β:         mov              r11, 210;                            jmp   n519_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F5_β:
                                                                              jmp   n519_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx534_50
                        mov              qword ptr [rsp + 320], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx534_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 360]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._def$2F5_ω:
                        mov              rcx, qword ptr [rsp + 368]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._super$2F5:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 352
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._super$2F5_α_body:
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rsp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 14
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n536_var_ref_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n538_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n539_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n540_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n541_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n541_call_builtin_gen_α:
                        mov              r11, 217
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 208], 0
.Lx554_60:              .section         .rodata
.Lbynamegenfn217:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn217]
                        lea              rsi, [rsp + 112]
                        mov              edx, 6
                        lea              rcx, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $xpto$230._super$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n542_suspend_α
n541_call_builtin_gen_β:
                        mov              r11, 217;                            jmp   .Lx554_60
#-----------------------------------------------------------------------------------------------------------------------
n542_suspend_α:         mov              r11, 218
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx556_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx556_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n542_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._super$2F5_γ
n542_suspend_β:         mov              r11, 218;                            jmp   n541_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._super$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._super$2F5_β:
                                                                              jmp   n541_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._super$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx556_50
                        mov              qword ptr [rsp + 320], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx556_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 360]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._super$2F5_ω:
                        mov              rcx, qword ptr [rsp + 368]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._ddcl$2F2:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._ddcl$2F2_α_body:
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 13
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n558_var_ref_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "$xpto#0._ddcl"
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n560_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_gen_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 112], 0
.Lx567_60:              .section         .rodata
.Lbynamegenfn222:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn222]
                        lea              rsi, [rsp + 64]
                        mov              edx, 3
                        lea              rcx, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $xpto$230._ddcl$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n561_suspend_α
n560_call_builtin_gen_β:
                        mov              r11, 222;                            jmp   .Lx567_60
#-----------------------------------------------------------------------------------------------------------------------
n561_suspend_α:         mov              r11, 223
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx569_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx569_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n561_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._ddcl$2F2_γ
n561_suspend_β:         mov              r11, 223;                            jmp   n560_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddcl$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddcl$2F2_β:
                                                                              jmp   n560_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddcl$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx569_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx569_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddcl$2F2_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._ddef$2F3:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._ddef$2F3_α_body:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 13
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n571_var_ref_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n573_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n574_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_gen_α:
                        mov              r11, 228
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 144], 0
.Lx583_60:              .section         .rodata
.Lbynamegenfn228:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn228]
                        lea              rsi, [rsp + 80]
                        mov              edx, 4
                        lea              rcx, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $xpto$230._ddef$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n575_suspend_α
n574_call_builtin_gen_β:
                        mov              r11, 228;                            jmp   .Lx583_60
#-----------------------------------------------------------------------------------------------------------------------
n575_suspend_α:         mov              r11, 229
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx585_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx585_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n575_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._ddef$2F3_γ
n575_suspend_β:         mov              r11, 229;                            jmp   n574_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddef$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddef$2F3_β:
                                                                              jmp   n574_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddef$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx585_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx585_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._ddef$2F3_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$xpto$230._alias$2F3:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$xpto$230._alias$2F3_α_body:
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 14
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n587_var_ref_α
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n588_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n590_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_gen_α:
                        mov              r11, 234
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 144], 0
.Lx599_60:              .section         .rodata
.Lbynamegenfn234:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn234]
                        lea              rsi, [rsp + 80]
                        mov              edx, 4
                        lea              rcx, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $xpto$230._alias$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n591_suspend_α
n590_call_builtin_gen_β:
                        mov              r11, 234;                            jmp   .Lx599_60
#-----------------------------------------------------------------------------------------------------------------------
n591_suspend_α:         mov              r11, 235
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx601_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx601_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n591_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $xpto$230._alias$2F3_γ
n591_suspend_β:         mov              r11, 235;                            jmp   n590_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._alias$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._alias$2F3_β:
                                                                              jmp   n590_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._alias$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx601_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx601_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$xpto$230._alias$2F3_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
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
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rcx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 11
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n603_call_proc_staged_α
.Lx604_0:               .quad            .Lx604_0_s
.Lx604_0_s:             .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n603_call_proc_staged_α:
                        mov              r11, 237
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx606_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx606_21
.Lx606_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx606_21:              mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx606_1
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx606_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx606_3]
                        push             rcx
                        lea              rcx, [rip + .Lx606_3]
                        lea              rdx, [rip + .Lx606_4];               jmp   rax
.Lx606_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx606_2
.Lx606_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx606_2
.Lx606_1:               call             rt_faildescr@PLT
.Lx606_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx606_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx606_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n603_call_proc_staged_β:
                        mov              r11, 237;                            jmp   main_ω
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 88]
                        add              rsp, 112;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 96]
                        add              rsp, 112;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__test$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "create_delete/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__create_delete$2F0
                        .quad            create_delete$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            3680
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_test/4"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__pj_test$2F4
                        .quad            pj_test$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            576
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "between/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__between$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            208
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "run_abolish_test/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__run_abolish_test$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "test_abolish/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__test_abolish$2F0
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__pj_dir_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
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
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__pj_dir_3$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
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
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "$xpto#0._dcl/4"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__$xpto$230._dcl$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            288
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "$xpto#0._dcl/6"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__$xpto$230._dcl$2F6
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            6
                        .long            0
                        .long            384
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "$xpto#0._def/3"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__$xpto$230._def$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "$xpto#0._def/5"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__$xpto$230._def$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            336
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "$xpto#0._super/5"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__$xpto$230._super$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            336
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "$xpto#0._ddcl/2"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__$xpto$230._ddcl$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "$xpto#0._ddef/3"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__$xpto$230._ddef$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "$xpto#0._alias/3"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__$xpto$230._alias$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
