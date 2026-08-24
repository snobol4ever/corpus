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
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1360
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx45_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx45_101
.Lx45_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx45_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx45_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx45_101
.Lx45_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx45_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n2_lit_string_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n3_lit_string_α
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n4_lit_string_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n5_call_builtin_prolog_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n6_var_ref_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn54:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n8_var_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn58:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n10_lit_string_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 0
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n11_call_builtin_prolog_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn61:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n14_lit_string_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n15_lit_string_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n16_lit_integer_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n17_lit_string_α
.Lx67_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n18_lit_integer_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n19_lit_string_α
.Lx69_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 2
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n20_call_builtin_prolog_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n23_call_builtin_prolog_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn75:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n24_var_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 536], rax;          jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn79:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 0
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n27_call_builtin_prolog_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn82:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n28_lit_string_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 5
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n29_var_ref_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn87:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n31_var_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 360], rax;          jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn91:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 0
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n34_call_builtin_prolog_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn94:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n35_lit_integer_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n36_var_ref_α
.Lx95_0:                .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn99:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n38_var_α
n37_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 184], rax;          jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn103:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n41_call_builtin_prolog_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn106:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                                                                              jmp   n42_move_label_α
n41_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_move_label_α:       mov              r11, 43
                        lea              rax, [rip + n44_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:      mov              r11, 44
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
n43_disjunction_β:      mov              r11, 44;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
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
                                                                              jmp   main_ω
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1368]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1376]
                        add              rsp, 1392;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
