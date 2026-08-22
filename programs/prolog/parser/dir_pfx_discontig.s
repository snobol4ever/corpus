                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
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
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx8_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx8_101
.Lx8_102:               lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx8_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx8_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx8_101
.Lx8_100:               lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx8_101:               mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n2_lit_string_α
.Lx9_0:                 .quad            .Lx9_0_s
.Lx9_0_s:               .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 3
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n3_lit_integer_α
.Lx10_0:                .quad            .Lx10_0_s
.Lx10_0_s:              .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n4_call_builtin_prolog_α
.Lx11_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_call_proc_staged_α
n4_call_builtin_prolog_β:
                                                                              jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx14_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx14_21
.Lx14_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx14_21:               mov              rdi, qword ptr [rip + .Lx14_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx14_1
                        mov              rdi, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx14_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx14_3]
                        push             rcx
                        lea              rcx, [rip + .Lx14_3]
                        lea              rdx, [rip + .Lx14_4];                jmp   rax
.Lx14_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx14_2
.Lx14_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx14_2
.Lx14_1:                call             rt_faildescr@PLT
.Lx14_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx14_29
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
.Lx14_29:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n7_call_builtin_prolog_α
                                                                              jmp   n6_suspend_α
n5_call_proc_staged_β:                                                        jmp   n7_call_builtin_prolog_α
.Lx14_0:                .quad            .Lx14_0_s
.Lx14_0_s:              .string          "discontiguous/1"
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx16_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx16_61:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n6_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n6_suspend_β:                                                                 jmp   n5_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
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
n7_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx17_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx17_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
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
n18_lit_string_α:       mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n19_lit_string_α
.Lx23_0:                .quad            .Lx23_0_s
.Lx23_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 3
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n20_lit_integer_α
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n21_call_builtin_prolog_α
.Lx25_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_proc_staged_α
n21_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx28_20
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx28_21
.Lx28_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx28_21:               mov              rdi, qword ptr [rip + .Lx28_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx28_1
                        mov              rdi, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx28_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx28_3]
                        push             rcx
                        lea              rcx, [rip + .Lx28_3]
                        lea              rdx, [rip + .Lx28_4];                jmp   rax
.Lx28_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx28_2
.Lx28_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx28_2
.Lx28_1:                call             rt_faildescr@PLT
.Lx28_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx28_29
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
.Lx28_29:               mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n22_call_proc_staged_β:                                                       jmp   main_ω
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "discontiguous/1"
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
.Lstartup_pname0:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__pj_dir_0$2F0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
