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
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 560
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx19_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx19_101
.Lx19_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx19_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx19_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx19_101
.Lx19_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx19_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n2_lit_string_α
.Lx20_0:                .quad            .Lx20_0_s
.Lx20_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n3_lit_string_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n4_call_builtin_prolog_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_call_builtin_prolog_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn25:               .string          "$write_canonical"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_string_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 0
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n7_call_builtin_prolog_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn28:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n9_lit_integer_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n10_lit_integer_α
.Lx30_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n11_lit_integer_α
.Lx31_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n12_call_builtin_prolog_α
.Lx32_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_call_builtin_prolog_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn35:               .string          "$write_canonical"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_lit_string_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n15_call_builtin_prolog_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn38:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n18_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_move_label_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_move_label_α:       mov              r11, 17
                        lea              rax, [rip + n18_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      mov              r11, 18
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n17_disjunction_β:      mov              r11, 18;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
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
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 568]
                        add              rsp, 592;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 576]
                        add              rsp, 592;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
