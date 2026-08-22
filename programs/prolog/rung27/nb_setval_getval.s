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
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 464
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
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx17_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx17_101
.Lx17_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx17_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx17_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx17_101
.Lx17_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx17_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 7
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n2_lit_integer_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n3_call_builtin_prolog_α
.Lx19_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn21:               .string          "$nb_setval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_lit_string_α
n3_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 7
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n5_lit_integer_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n6_call_builtin_prolog_α
.Lx23_0:                .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn25:               .string          "$nb_setval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 7
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n8_var_ref_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn30:               .string          "$nb_getval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_var_α
n9_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 184], rax;          jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn34:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n13_call_builtin_prolog_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn37:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_move_label_α
n13_call_builtin_prolog_β:
                                                                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_move_label_α:       lea              rax, [rip + n16_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n15_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
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
n16_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n15_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
