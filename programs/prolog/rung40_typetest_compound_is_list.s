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
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              qword ptr [rsp + 968], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 944
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx32_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx32_101
.Lx32_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx32_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx32_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx32_101
.Lx32_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx32_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n2_lit_integer_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n3_lit_string_α
.Lx34_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n4_lit_integer_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n5_lit_string_α
.Lx36_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n6_lit_integer_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n7_lit_string_α
.Lx38_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 2
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n8_call_builtin_prolog_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_call_builtin_prolog_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_call_builtin_prolog_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn44:               .string          "$tt_is_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn44]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 3
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n13_call_builtin_prolog_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn47:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_string_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n15_call_builtin_prolog_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn50:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_string_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 0
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n17_call_builtin_prolog_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn53:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_lit_string_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n19_lit_string_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n20_lit_string_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n21_call_builtin_prolog_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n25_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn59:               .string          "$tt_is_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n25_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n24_call_builtin_prolog_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn62:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n26_call_builtin_prolog_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn65:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n28_call_builtin_prolog_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn68:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_move_label_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_move_label_α:       mov              r11, 30
                        lea              rax, [rip + n31_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:      mov              r11, 31
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n30_disjunction_β:      mov              r11, 31;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 952]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 960]
                        add              rsp, 976;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
