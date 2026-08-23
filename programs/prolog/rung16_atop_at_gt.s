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
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rcx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 816
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx33_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx33_101
.Lx33_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx33_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx33_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx33_101
.Lx33_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx33_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n2_lit_string_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n3_call_builtin_prolog_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn37:               .string          "$atop_gt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n6_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_lit_string_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n5_call_builtin_prolog_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn40:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 2
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n7_call_builtin_prolog_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn43:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn43]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 0
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n9_call_builtin_prolog_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn46:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_lit_string_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n11_lit_string_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n12_call_builtin_prolog_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn50:               .string          "$atop_gt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n15_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 3
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n14_call_builtin_prolog_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn53:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n16_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn56:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 0
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n18_call_builtin_prolog_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn59:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n20_lit_string_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n21_call_builtin_prolog_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn63:               .string          "$atop_gt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n24_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_string_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n23_call_builtin_prolog_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn66:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 2
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n25_call_builtin_prolog_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn69:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n27_call_builtin_prolog_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn72:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_move_label_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_move_label_α:       mov              r11, 29
                        lea              rax, [rip + n29_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_move_label_α
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_move_label_α:       mov              r11, 31
                        lea              rax, [rip + n32_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:      mov              r11, 32
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n31_disjunction_β:      mov              r11, 32;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
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
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n31_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 824]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 832]
                        add              rsp, 848;                            jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
