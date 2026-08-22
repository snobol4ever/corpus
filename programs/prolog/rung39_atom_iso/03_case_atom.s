                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 496
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
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx18_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx18_101
.Lx18_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx18_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx18_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx18_101
.Lx18_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx18_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 5
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n2_var_ref_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn23:               .string          "$upcase_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_α
n3_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 360], rax;          jmp   n5_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn27:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_string_α
n5_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 0
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n7_call_builtin_prolog_α
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn30:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 5
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n9_var_ref_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "WORLD"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn35:               .string          "$downcase_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_var_α
n10_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 184], rax;          jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn39:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n14_call_builtin_prolog_α
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn42:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n17_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_move_label_α
n14_call_builtin_prolog_β:
                                                                              jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_move_label_α:       lea              rax, [rip + n17_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n16_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
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
n17_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
