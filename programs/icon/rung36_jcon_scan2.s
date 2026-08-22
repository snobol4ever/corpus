                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__foo:
foo_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_call_α
.Lx12_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              mov              r11, 2
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn2:            .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn2]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n3_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_suspend_α
n1_call_β:              mov              r11, 2
                        mov              r14, qword ptr [rsp + 224];          jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:           mov              r11, 3
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 8], rax;            jmp   foo_γ
n2_suspend_β:           mov              r11, 3;                              jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n4_scan_enter_α
.Lx16_0:                .quad            .Lx16_0_s
.Lx16_0_s:              .string          "zxc"
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_enter_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:       mov              r11, 6
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], -1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n6_scan_upto_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_upto_α:         mov              r11, 7
                        mov              qword ptr [rsp + 144], r14
.Lx21_0:                mov              rax, qword ptr [rsp + 144]
                        cmp              rax, r15;                            jge   n8_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx21_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx21_1
                        mov              qword ptr [rsp + 128], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 136], rax;          jmp   n7_suspend_α
.Lx21_1:                inc              qword ptr [rsp + 144];               jmp   .Lx21_0
n6_scan_upto_β:         mov              r11, 7
                        inc              qword ptr [rsp + 144];               jmp   .Lx21_0
.Lx21_2:                .quad            .Lx21_2_s
.Lx21_2_s:              .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:           mov              r11, 8
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   foo_γ
n7_suspend_β:           mov              r11, 8
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax;                                 jmp   n6_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:              mov              r11, 9
                        lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 80]
                        mov              r14, qword ptr [rsp + 88]
                        mov              r15, qword ptr [rsp + 96];           jmp   n9_lit_charset_α
n8_scan_β:              mov              r11, 9;                              jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              r11, 10
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], -1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n10_scan_upto_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_upto_α:        mov              r11, 11
                        mov              qword ptr [rsp + 32], r14
.Lx28_0:                mov              rax, qword ptr [rsp + 32]
                        cmp              rax, r15;                            jge   foo_ω
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx28_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx28_1
                        mov              qword ptr [rsp + 16], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 24], rax;           jmp   n11_suspend_α
.Lx28_1:                inc              qword ptr [rsp + 32];                jmp   .Lx28_0
n10_scan_upto_β:        mov              r11, 11
                        inc              qword ptr [rsp + 32];                jmp   .Lx28_0
.Lx28_2:                .quad            .Lx28_2_s
.Lx28_2_s:              .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   foo_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n10_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
foo_β:
                                                                              jmp   n2_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
foo_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
foo_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 3264
                        mov              qword ptr [rsp + 3240], rcx
                        mov              qword ptr [rsp + 3248], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 6
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n32_call_builtin_icon_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "simple"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n33_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_lit_string_α
n32_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 3136], 2            # result
                        mov              dword ptr [rsp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n34_scan_enter_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "fghjkl"
#-----------------------------------------------------------------------------------------------------------------------
n34_scan_enter_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n36_scan_tab_α
.Lx145_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_tab_α:         mov              r11, 18
                        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx147_0
                        add              rax, r15
                        add              rax, 1
.Lx147_0:               cmp              rax, 1;                              jl    n38_keyword_icon_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n38_keyword_icon_α
                        mov              qword ptr [rsp + 3104], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n37_call_builtin_icon_α
n36_scan_tab_β:         mov              r11, 18
                        mov              r14, qword ptr [rsp + 3104];         jmp   n38_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        .section         .rodata
.Lrkfn149:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              al, 104;                             je    n38_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_keyword_icon_α
n37_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n38_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_icon_α:     mov              r11, 20
                        mov              qword ptr [rsp + 3008], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 3016], rax;         jmp   n39_call_builtin_icon_α
n38_keyword_icon_β:     mov              r11, 20;                             jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2984], rax
                        .section         .rodata
.Lrkfn152:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 2976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              al, 104;                             je    n40_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_lit_integer_α
n39_call_builtin_icon_β:
                        mov              r11, 21;                             jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n41_scan_tab_α
.Lx153_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_tab_α:         mov              r11, 23
                        mov              rax, 5
                        cmp              rax, 1;                              jge   .Lx155_0
                        add              rax, r15
                        add              rax, 1
.Lx155_0:               cmp              rax, 1;                              jl    n45_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n45_scan_α
                        mov              qword ptr [rsp + 2928], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n42_call_builtin_icon_α
n41_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rsp + 2928];         jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        .section         .rodata
.Lrkfn157:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rsp + 2880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n45_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_conjunction_α
n42_call_builtin_icon_β:
                        mov              r11, 24;                             jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n44_scan_α
n43_conjunction_β:      mov              r11, 25;                             jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:             mov              r11, 26
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        lea              rdi, [rsp + 2784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 2784]
                        mov              r14, qword ptr [rsp + 2792]
                        mov              r15, qword ptr [rsp + 2800];         jmp   n46_lit_string_α
n44_scan_β:             mov              r11, 26;                             jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             mov              r11, 27
                        lea              rdi, [rsp + 2784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 2784]
                        mov              r14, qword ptr [rsp + 2792]
                        mov              r15, qword ptr [rsp + 2800];         jmp   n46_lit_string_α
n45_scan_β:             mov              r11, 27;                             jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n47_call_builtin_icon_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "nested"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 2720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n48_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
n47_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n49_scan_enter_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_enter_α:       mov              r11, 31
                        mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n51_scan_tab_α
.Lx169_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_tab_α:         mov              r11, 33
                        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx171_0
                        add              rax, r15
                        add              rax, 1
.Lx171_0:               cmp              rax, 1;                              jl    n53_lit_string_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n53_lit_string_α
                        mov              qword ptr [rsp + 2656], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n52_call_builtin_icon_α
n51_scan_tab_β:         mov              r11, 33
                        mov              r14, qword ptr [rsp + 2656];         jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lrkfn173:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rsp + 2608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n53_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_string_α
n52_call_builtin_icon_β:
                        mov              r11, 34;                             jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n54_scan_enter_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n54_scan_enter_α:       mov              r11, 36
                        mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 2560], 3            # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n56_scan_tab_α
.Lx177_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n56_scan_tab_α:         mov              r11, 38
                        mov              rax, 3
                        cmp              rax, 1;                              jge   .Lx179_0
                        add              rax, r15
                        add              rax, 1
.Lx179_0:               cmp              rax, 1;                              jl    n58_keyword_icon_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n58_keyword_icon_α
                        mov              qword ptr [rsp + 2544], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n57_call_builtin_icon_α
n56_scan_tab_β:         mov              r11, 38
                        mov              r14, qword ptr [rsp + 2544];         jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n58_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_keyword_icon_α
n57_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_keyword_icon_α:     mov              r11, 40
                        mov              qword ptr [rsp + 2448], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2456], rax;         jmp   n59_call_builtin_icon_α
n58_keyword_icon_β:     mov              r11, 40;                             jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn184:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n60_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_lit_integer_α
n59_call_builtin_icon_β:
                        mov              r11, 41;                             jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n61_scan_tab_α
.Lx185_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n61_scan_tab_α:         mov              r11, 43
                        mov              rax, 5
                        cmp              rax, 1;                              jge   .Lx187_0
                        add              rax, r15
                        add              rax, 1
.Lx187_0:               cmp              rax, 1;                              jl    n65_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n65_scan_α
                        mov              qword ptr [rsp + 2368], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n62_call_builtin_icon_α
n61_scan_tab_β:         mov              r11, 43
                        mov              r14, qword ptr [rsp + 2368];         jmp   n65_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2328], rax
                        .section         .rodata
.Lrkfn189:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n65_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_conjunction_α
n62_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n65_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n63_conjunction_α:      mov              r11, 45
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n64_scan_α
n63_conjunction_β:      mov              r11, 45;                             jmp   n65_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n64_scan_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2224]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 2224]
                        mov              r14, qword ptr [rsp + 2232]
                        mov              r15, qword ptr [rsp + 2240];         jmp   n66_keyword_icon_α
n64_scan_β:             mov              r11, 46;                             jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_scan_α:             mov              r11, 47
                        lea              rdi, [rsp + 2224]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 2224]
                        mov              r14, qword ptr [rsp + 2232]
                        mov              r15, qword ptr [rsp + 2240];         jmp   n66_keyword_icon_α
n65_scan_β:             mov              r11, 47;                             jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_keyword_icon_α:     mov              r11, 48
                        mov              qword ptr [rsp + 2176], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 2184], rax;         jmp   n67_call_builtin_icon_α
n66_keyword_icon_β:     mov              r11, 48;                             jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn197:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n69_scan_tab_α
.Lx198_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:         mov              r11, 51
                        mov              rax, 5
                        cmp              rax, 1;                              jge   .Lx200_0
                        add              rax, r15
                        add              rax, 1
.Lx200_0:               cmp              rax, 1;                              jl    n73_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n73_scan_α
                        mov              qword ptr [rsp + 2096], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n70_call_builtin_icon_α
n69_scan_tab_β:         mov              r11, 51
                        mov              r14, qword ptr [rsp + 2096];         jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn202:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n73_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_conjunction_α
n70_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n71_conjunction_α:      mov              r11, 53
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n72_scan_α
n71_conjunction_β:      mov              r11, 53;                             jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_α:             mov              r11, 54
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1952]
                        mov              r14, qword ptr [rsp + 1960]
                        mov              r15, qword ptr [rsp + 1968];         jmp   n74_lit_string_α
n72_scan_β:             mov              r11, 54;                             jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_scan_α:             mov              r11, 55
                        lea              rdi, [rsp + 1952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1952]
                        mov              r14, qword ptr [rsp + 1960]
                        mov              r15, qword ptr [rsp + 1968];         jmp   n74_lit_string_α
n73_scan_β:             mov              r11, 55;                             jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 5
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n75_call_builtin_icon_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n76_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_lit_string_α
n75_call_builtin_icon_β:
                        mov              r11, 57;                             jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n77_scan_enter_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n77_scan_enter_α:       mov              r11, 59
                        mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n78_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_charset_α:      mov              r11, 60
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], -1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n79_scan_upto_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n79_scan_upto_α:        mov              r11, 61
                        mov              qword ptr [rsp + 1824], r14
.Lx216_0:               mov              rax, qword ptr [rsp + 1824]
                        cmp              rax, r15;                            jge   n80_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx216_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx216_1
                        mov              qword ptr [rsp + 1808], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1816], rax;         jmp   n80_scan_α
.Lx216_1:               inc              qword ptr [rsp + 1824];              jmp   .Lx216_0
n79_scan_upto_β:        mov              r11, 61
                        inc              qword ptr [rsp + 1824];              jmp   .Lx216_0
.Lx216_2:               .quad            .Lx216_2_s
.Lx216_2_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n80_scan_α:             mov              r11, 62
                        lea              rdi, [rsp + 1760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1760]
                        mov              r14, qword ptr [rsp + 1768]
                        mov              r15, qword ptr [rsp + 1776];         jmp   n81_call_builtin_icon_α
n80_scan_β:             mov              r11, 62;                             jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n82_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_lit_string_α
n81_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 12
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n83_call_builtin_icon_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "nested break"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n84_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_lit_string_α
n83_call_builtin_icon_β:
                        mov              r11, 65;                             jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 5
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n85_scan_enter_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:       mov              r11, 67
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n87_scan_enter_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "67890"
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_enter_α:       mov              r11, 69
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 70
                        mov              qword ptr [rsp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n89_scan_move_α
.Lx230_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_move_α:        mov              r11, 71
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n91_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n91_lit_charset_α
                        mov              qword ptr [rsp + 1568], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n90_call_builtin_icon_α
n89_scan_move_β:        mov              r11, 71
                        mov              r14, qword ptr [rsp + 1568];         jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n91_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_lit_charset_α
n90_call_builtin_icon_β:
                        mov              r11, 72;                             jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_charset_α:      mov              r11, 73
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], -1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n92_scan_upto_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n92_scan_upto_α:        mov              r11, 74
                        mov              qword ptr [rsp + 1472], r14
.Lx237_0:               mov              rax, qword ptr [rsp + 1472]
                        cmp              rax, r15;                            jge   n93_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx237_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx237_1
                        mov              qword ptr [rsp + 1456], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1464], rax;         jmp   n93_scan_α
.Lx237_1:               inc              qword ptr [rsp + 1472];              jmp   .Lx237_0
n92_scan_upto_β:        mov              r11, 74
                        inc              qword ptr [rsp + 1472];              jmp   .Lx237_0
.Lx237_2:               .quad            .Lx237_2_s
.Lx237_2_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n93_scan_α:             mov              r11, 75
                        lea              rdi, [rsp + 1360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1360]
                        mov              r14, qword ptr [rsp + 1368]
                        mov              r15, qword ptr [rsp + 1376];         jmp   n94_call_builtin_icon_α
n93_scan_β:             mov              r11, 75;                             jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n95_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_lit_string_α
n94_call_builtin_icon_β:
                        mov              r11, 76;                             jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 4
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n96_call_builtin_icon_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n97_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_lit_string_α
n96_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 79
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 5
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n98_scan_enter_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n98_scan_enter_α:       mov              r11, 80
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n99_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n99_bound_α:            mov              r11, 81
                        mov              qword ptr [rsp + 1104], rsp;         jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 4
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n101_scan_enter_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "mnbv"
#-----------------------------------------------------------------------------------------------------------------------
n101_scan_enter_α:      mov              r11, 83
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n103_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:            mov              r11, 84;                             jmp   n103_unmark_α
n102_goto_β:            mov              r11, 84;                             jmp   n103_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n103_unmark_α:          mov              r11, 85
                        mov              rsp, qword ptr [rsp + 1104];         jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n105_scan_move_α
.Lx256_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n105_scan_move_α:       mov              r11, 87
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n110_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n110_scan_α
                        mov              qword ptr [rsp + 1072], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n106_call_builtin_icon_α
n105_scan_move_β:       mov              r11, 87
                        mov              r14, qword ptr [rsp + 1072];         jmp   n110_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn260:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n110_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_conjunction_α
n106_call_builtin_icon_β:
                        mov              r11, 88;                             jmp   n110_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n107_conjunction_α:     mov              r11, 89
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n108_scan_α
n107_conjunction_β:     mov              r11, 89;                             jmp   n110_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n108_scan_α:            mov              r11, 90
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 928]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 928]
                        mov              r14, qword ptr [rsp + 936]
                        mov              r15, qword ptr [rsp + 944];          jmp   n109_call_builtin_icon_α
n108_scan_β:            mov              r11, 90;                             jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n111_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_lit_string_α
n109_call_builtin_icon_β:
                        mov              r11, 91;                             jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_scan_α:            mov              r11, 92
                        lea              rdi, [rsp + 928]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 928]
                        mov              r14, qword ptr [rsp + 936]
                        mov              r15, qword ptr [rsp + 944];          jmp   n111_lit_string_α
n110_scan_β:            mov              r11, 92;                             jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 9
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n112_call_builtin_icon_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "non-local"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn270:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n113_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_lit_string_α
n112_call_builtin_icon_β:
                        mov              r11, 94;                             jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n114_scan_enter_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "qwerty"
#-----------------------------------------------------------------------------------------------------------------------
n114_scan_enter_α:      mov              r11, 96
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n115_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n115_proc_gen_α:        mov              r11, 97
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], 0
                        lea              rax, [rip + .Lx275_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx275_1
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4];               jmp   rax
.Lx275_3:               mov              qword ptr [rsp + 616], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 608]
                        test             rax, rax;                            jne   .Lx275_5
                        mov              qword ptr [rsp + 608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx275_2
.Lx275_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx275_2
.Lx275_4:               mov              rax, qword ptr [rsp + 608]
                        test             rax, rax;                            jne   .Lx275_6
                        mov              qword ptr [rsp + 608], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx275_2
.Lx275_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx275_2
.Lx275_1:               call             rt_faildescr@PLT
.Lx275_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx275_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx275_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n122_scan_α
                                                                              jmp   n116_call_builtin_icon_α
n115_proc_gen_β:        mov              r11, 97
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 616];          jmp   qword ptr [rsp]
.Lx275_7:               add              rsp, 8
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n122_scan_α
                                                                              jmp   n116_call_builtin_icon_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn277:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n115_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_bound_α
n116_call_builtin_icon_β:
                        mov              r11, 98;                             jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n117_bound_α:           mov              r11, 99
                        mov              qword ptr [rsp + 640], rsp;          jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n119_scan_move_α
.Lx280_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n119_scan_move_α:       mov              r11, 101
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n121_unmark_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n121_unmark_α
                        mov              qword ptr [rsp + 752], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n120_call_builtin_icon_α
n119_scan_move_β:       mov              r11, 101
                        mov              r14, qword ptr [rsp + 752];          jmp   n121_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn284:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n121_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_unmark_α
n120_call_builtin_icon_β:
                        mov              r11, 102;                            jmp   n121_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n121_unmark_α:          mov              r11, 103
                        mov              rsp, qword ptr [rsp + 640];          jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:            mov              r11, 104
                        lea              rdi, [rsp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 496]
                        mov              r14, qword ptr [rsp + 504]
                        mov              r15, qword ptr [rsp + 512];          jmp   n123_lit_string_α
n122_scan_β:            mov              r11, 104;                            jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 6
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n124_scan_enter_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n124_scan_enter_α:      mov              r11, 106
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n125_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_keyword_icon_α:    mov              r11, 107
                        mov              qword ptr [rsp + 432], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 440], rax;          jmp   n126_call_builtin_icon_α
n125_keyword_icon_β:    mov              r11, 107;                            jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn294:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n127_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_lit_string_α
n126_call_builtin_icon_β:
                        mov              r11, 108;                            jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 3
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n128_scan_match_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n128_scan_match_α:      mov              r11, 110
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3;                              jl    n134_keyword_icon_α
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r11
                        test             eax, eax;                            jne   n134_keyword_icon_α
                        mov              qword ptr [rsp + 208], 3
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rsp + 216], rax;          jmp   n129_scan_tab_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n129_scan_tab_α:        mov              r11, 111
                        mov              rax, qword ptr [rsp + 216]
                        cmp              rax, 1;                              jge   .Lx299_0
                        add              rax, r15
                        add              rax, 1
.Lx299_0:               cmp              rax, 1;                              jl    n134_keyword_icon_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n134_keyword_icon_α
                        mov              qword ptr [rsp + 192], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n130_bound_α
n129_scan_tab_β:        mov              r11, 111
                        mov              r14, qword ptr [rsp + 192];          jmp   n134_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_bound_α:           mov              r11, 112
                        mov              qword ptr [rsp + 256], rsp;          jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_α:    mov              r11, 113
                        mov              qword ptr [rsp + 352], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 360], rax;          jmp   n132_call_builtin_icon_α
n131_keyword_icon_β:    mov              r11, 113;                            jmp   n133_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn304:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n133_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_unmark_α
n132_call_builtin_icon_β:
                        mov              r11, 114;                            jmp   n133_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n133_unmark_α:          mov              r11, 115
                        mov              rsp, qword ptr [rsp + 256];          jmp   n134_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_keyword_icon_α:    mov              r11, 116
                        mov              qword ptr [rsp + 144], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 152], rax;          jmp   n135_call_builtin_icon_α
n134_keyword_icon_β:    mov              r11, 116;                            jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n138_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_conjunction_α
n135_call_builtin_icon_β:
                        mov              r11, 117;                            jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n136_conjunction_α:     mov              r11, 118
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n137_scan_α
n136_conjunction_β:     mov              r11, 118;                            jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_α:            mov              r11, 119
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_γ
n137_scan_β:            mov              r11, 119;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_scan_α:            mov              r11, 120
                        lea              rdi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 16]
                        mov              r14, qword ptr [rsp + 24]
                        mov              r15, qword ptr [rsp + 32];           jmp   main_ω
n138_scan_β:            mov              r11, 120;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__foo
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            288
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
