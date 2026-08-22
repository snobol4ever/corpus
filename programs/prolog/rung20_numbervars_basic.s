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
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rcx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 752
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
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx24_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx24_101
.Lx24_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx24_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx24_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx24_101
.Lx24_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx24_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n2_var_ref_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n4_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n5_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_integer_α
n5_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n7_var_ref_α
.Lx33_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn37:               .string          "$numbervars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 448]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n10_var_ref_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn47:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n16_call_builtin_prolog_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn50:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_var_α
n16_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 184], rax;          jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn54:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n20_call_builtin_prolog_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn57:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_move_label_α
n20_call_builtin_prolog_β:
                                                                              jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_move_label_α:       lea              rax, [rip + n23_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n22_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
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
n23_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n22_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 760]
                        add              rsp, 784;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 768]
                        add              rsp, 784;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
