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
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1120
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
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
                        test             rax, rax;                            je    .Lx39_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx39_101
.Lx39_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx39_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx39_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx39_101
.Lx39_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx39_101:              mov              qword ptr [rsp + 32], rax
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
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n2_call_builtin_prolog_α
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_prolog_α:
                        mov              r11, 3
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn42:               .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589824
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_prolog_β:
                        mov              r11, 3;                              jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n4_call_builtin_prolog_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn45:               .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589824
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_lit_string_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 0
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n6_call_builtin_prolog_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn48:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_lit_integer_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n8_call_builtin_prolog_α
.Lx49_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn51:               .string          "$tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n10_call_builtin_prolog_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn54:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_lit_string_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 0
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n12_call_builtin_prolog_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn57:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_lit_integer_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n14_lit_integer_α
.Lx58_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n15_call_builtin_prolog_α
.Lx59_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_call_builtin_prolog_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn62:               .string          "$tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n18_call_builtin_prolog_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn65:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 0
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n20_call_builtin_prolog_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn68:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n22_lit_string_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 10
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n23_lit_string_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 9
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n24_var_ref_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          "character"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_var_ref_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_call_builtin_prolog_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx78_102
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344];          jmp   .Lx78_101
.Lx78_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx78_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx78_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx78_101
.Lx78_100:              lea              rdi, [rsp + 352]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx78_101:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 2
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n30_call_builtin_prolog_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn81:               .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589824
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_move_label_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn83:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n33_call_builtin_prolog_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "caught"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn86:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 0
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n35_call_builtin_prolog_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn89:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_move_label_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_move_label_α:       mov              r11, 37
                        lea              rax, [rip + n38_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              r11, 38
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
n37_disjunction_β:      mov              r11, 38;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
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
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n37_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1128]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1136]
                        add              rsp, 1152;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
