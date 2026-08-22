                        .intel_syntax    noprefix
                        .text
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
                        sub              rsp, 3408
                        mov              qword ptr [rsp + 3384], rcx
                        mov              qword ptr [rsp + 3392], rdx
                        mov              rdi, rsp
                        add              rdi, 3296
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              mov              r11, 1
                        .section         .rodata
.Lrkfn147:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n2_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_assign_α
n0_call_β:              mov              r11, 1;                              jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 3264]
                        mov              rdx, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n3_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_field_var_α:         mov              r11, 4
                        mov              rdi, qword ptr [rip + .Lx151_0]
                        mov              rsi, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n6_var_α
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx;         jmp   n4_lit_integer_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 3248], 3            # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n5_assign_var_α
.Lx152_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_var_α:        mov              r11, 6
                        mov              rdi, qword ptr [rsp + 3200]
                        mov              rsi, qword ptr [rsp + 3208]
                        mov              rdx, qword ptr [rsp + 3248]
                        mov              rcx, qword ptr [rsp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n6_var_α
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n7_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_field_var_α:         mov              r11, 8
                        mov              rdi, qword ptr [rip + .Lx156_0]
                        mov              rsi, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n10_var_α
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx;         jmp   n8_lit_integer_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n9_assign_var_α
.Lx157_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:        mov              r11, 10
                        mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              rdx, qword ptr [rsp + 3184]
                        mov              rcx, qword ptr [rsp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n10_var_α
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n11_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n11_field_get_α:        mov              r11, 12
                        mov              rdi, qword ptr [rip + .Lx161_0]
                        mov              rsi, qword ptr [rsp + 3072]
                        mov              rdx, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n16_lit_integer_α
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n12_lit_string_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n13_var_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n14_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n14_field_get_α:        mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lx165_0]
                        mov              rsi, qword ptr [rsp + 3120]
                        mov              rdx, qword ptr [rsp + 3128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n16_lit_integer_α
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx;         jmp   n15_call_builtin_icon_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3016], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn167:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n16_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_lit_integer_α
n15_call_builtin_icon_β:
                        mov              r11, 16;                             jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n17_call_α
.Lx168_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn170:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n19_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_assign_α
n17_call_β:             mov              r11, 18;                             jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n20_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_field_var_α:        mov              r11, 21
                        mov              rdi, qword ptr [rip + .Lx174_0]
                        mov              rsi, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n23_var_α
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n21_lit_integer_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n22_assign_var_α
.Lx175_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:       mov              r11, 23
                        mov              rdi, qword ptr [rsp + 2848]
                        mov              rsi, qword ptr [rsp + 2856]
                        mov              rdx, qword ptr [rsp + 2896]
                        mov              rcx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n23_var_α
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n24_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n24_field_get_α:        mov              r11, 25
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              rsi, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n29_lit_integer_α
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n25_lit_string_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n26_var_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n27_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n27_field_get_α:        mov              r11, 28
                        mov              rdi, qword ptr [rip + .Lx183_0]
                        mov              rsi, qword ptr [rsp + 2832]
                        mov              rdx, qword ptr [rsp + 2840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n29_lit_integer_α
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n28_call_builtin_icon_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn185:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    n29_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_integer_α
n28_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n30_lit_integer_α
.Lx186_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n31_call_α
.Lx187_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        .section         .rodata
.Lrkfn189:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 2608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n33_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_assign_α
n31_call_β:             mov              r11, 32;                             jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 2592]
                        mov              rdx, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n34_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n34_field_get_α:        mov              r11, 35
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              rsi, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n39_var_α
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n35_lit_string_α
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n36_var_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n37_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n37_field_get_α:        mov              r11, 38
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        mov              rsi, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n39_var_α
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n38_call_builtin_icon_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n39_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_var_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n40_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_field_var_α:        mov              r11, 41
                        mov              rdi, qword ptr [rip + .Lx202_0]
                        mov              rsi, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n43_var_α
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n41_lit_integer_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n42_assign_var_α
.Lx203_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              r11, 43
                        mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              rdx, qword ptr [rsp + 2416]
                        mov              rcx, qword ptr [rsp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n43_var_α
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              mov              r11, 44
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n44_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_field_var_α:        mov              r11, 45
                        mov              rdi, qword ptr [rip + .Lx207_0]
                        mov              rsi, qword ptr [rsp + 2320]
                        mov              rdx, qword ptr [rsp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n47_var_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n45_lit_integer_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n46_assign_var_α
.Lx208_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_var_α:       mov              r11, 47
                        mov              rdi, qword ptr [rsp + 2304]
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n47_var_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n48_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n48_field_get_α:        mov              r11, 49
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              rsi, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n53_lit_integer_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n49_lit_string_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n50_var_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n51_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n51_field_get_α:        mov              r11, 52
                        mov              rdi, qword ptr [rip + .Lx216_0]
                        mov              rsi, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n53_lit_integer_α
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n52_call_builtin_icon_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n53_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_integer_α
n52_call_builtin_icon_β:
                        mov              r11, 53;                             jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 54
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n54_lit_integer_α
.Lx219_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n55_lit_integer_α
.Lx220_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n56_call_α
.Lx221_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn223:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n58_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
n56_call_β:             mov              r11, 57;                             jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n59_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n59_field_get_α:        mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              rsi, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n64_lit_integer_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n60_lit_string_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n61_var_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 62
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n62_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n62_field_get_α:        mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lx231_0]
                        mov              rsi, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n64_lit_integer_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n63_call_builtin_icon_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n64_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_lit_integer_α
n63_call_builtin_icon_β:
                        mov              r11, 64;                             jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n65_lit_integer_α
.Lx234_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n66_call_α
.Lx235_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn237:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n68_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_assign_α
n66_call_β:             mov              r11, 67;                             jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n69_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n69_iterate_α:          mov              r11, 70
                        mov              qword ptr [rsp + 1728], 0
.Lx242_0:               mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              rax, 104;                            je    n71_var_ref_α
                                                                              jmp   n70_call_builtin_icon_α
n69_iterate_β:          mov              r11, 70
                        inc              qword ptr [rsp + 1728];              jmp   .Lx242_0
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n69_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_iterate_β
n70_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n69_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3296]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n72_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n72_iterate_α:          mov              r11, 73
                        mov              qword ptr [rsp + 1600], 0
.Lx248_0:               mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              rax, 104;                            je    n75_var_α
                                                                              jmp   n73_lit_integer_α
n72_iterate_β:          mov              r11, 73
                        inc              qword ptr [rsp + 1600];              jmp   .Lx248_0
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      mov              r11, 74
                        mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n74_assign_var_α
.Lx249_0:               .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_var_α:       mov              r11, 75
                        mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n75_var_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n72_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              r11, 76
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n76_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n76_field_get_α:        mov              r11, 77
                        mov              rdi, qword ptr [rip + .Lx253_0]
                        mov              rsi, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n78_lit_integer_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n77_call_builtin_icon_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn255:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n78_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_lit_integer_α
n77_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              r11, 79
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n79_call_α
.Lx256_0:               .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn258:              .string          "simple"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n81_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_assign_α
n79_call_β:             mov              r11, 80;                             jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx;         jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n82_random_α
#-----------------------------------------------------------------------------------------------------------------------
n82_random_α:           mov              r11, 83
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n85_var_ref_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n83_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:            mov              r11, 84
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n85_var_ref_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n84_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n85_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_var_ref_α
n84_call_builtin_icon_β:
                        mov              r11, 85;                             jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n86_random_α
#-----------------------------------------------------------------------------------------------------------------------
n86_random_α:           mov              r11, 87
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n89_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              r11, 88
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n88_assign_var_α
.Lx269_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_var_α:       mov              r11, 89
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n89_var_α
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              r11, 90
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n90_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n90_iterate_α:          mov              r11, 91
                        mov              qword ptr [rsp + 1248], 0
.Lx274_0:               mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              rax, 104;                            je    n92_lit_integer_α
                                                                              jmp   n91_call_builtin_icon_α
n90_iterate_β:          mov              r11, 91
                        inc              qword ptr [rsp + 1248];              jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n90_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_lit_integer_α
n91_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n90_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 93
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n93_lit_integer_α
.Lx277_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n94_call_α
.Lx278_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             mov              r11, 95
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn280:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n96_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_assign_α
n94_call_β:             mov              r11, 95;                             jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 96
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx;         jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              r11, 98
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n98_lit_integer_α
.Lx284_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 99
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n99_to_α
.Lx285_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n99_to_α:               mov              r11, 100
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1024], 3
                        mov              qword ptr [rsp + 1032], rax
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1008], rax
.Lx287_0:               mov              rax, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1048]
                        cmp              rax, rcx;                            jg    n103_var_ref_α
                        mov              qword ptr [rsp + 992], 3
                        mov              qword ptr [rsp + 1000], rax;         jmp   n100_subscript_α
n99_to_β:               mov              r11, 100
                        inc              qword ptr [rsp + 1008];              jmp   .Lx287_0
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:       mov              r11, 101
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n99_to_β
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n101_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_deref_α:           mov              r11, 102
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n99_to_β
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              r11, 103
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n99_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_to_β
n102_call_builtin_icon_β:
                        mov              r11, 103;                            jmp   n99_to_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n105_lit_integer_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n106_lit_integer_α
.Lx295_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n107_to_α
.Lx296_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n107_to_α:              mov              r11, 108
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], 3
                        mov              qword ptr [rsp + 872], rax
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 848], rax
.Lx298_0:               mov              rax, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 888]
                        cmp              rax, rcx;                            jg    n112_lit_integer_α
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   n108_binop_α
n107_to_β:              mov              r11, 108
                        inc              qword ptr [rsp + 848];               jmp   .Lx298_0
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           mov              r11, 109
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n109_subscript_α:       mov              r11, 110
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n107_to_β
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n110_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_deref_α:           mov              r11, 111
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n107_to_β
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn303:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n107_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_to_β
n111_call_builtin_icon_β:
                        mov              r11, 112;                            jmp   n107_to_β
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n113_lit_integer_α
.Lx304_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n114_call_α
.Lx305_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            mov              r11, 115
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn307:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rsp + 656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n116_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_assign_α
n114_call_β:            mov              r11, 115;                            jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx;         jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n117_lit_integer_α
.Lx309_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n118_call_α
.Lx310_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 119
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn312:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n120_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_assign_α
n118_call_β:            mov              r11, 119;                            jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx;         jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 456], rax;          jmp   n121_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_field_var_α:       mov              r11, 122
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n126_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n122_deref_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n122_deref_α:           mov              r11, 123
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n126_var_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              r11, 124
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n124_binop_α
.Lx318_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           mov              r11, 125
                        mov              eax, dword ptr [rsp + 496]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx319_2
                        mov              rax, qword ptr [rsp + 504]
                        mov              rdx, 10
                        add              rax, rdx
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax;          jmp   .Lx319_7
.Lx319_2:               and              edx, 1;                              jz    .Lx319_0
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdi, 10
                        cmp              al, 5;                               je    .Lx319_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx319_4
.Lx319_3:               movq             xmm0, rsi
.Lx319_4:               cmp              cl, 5;                               je    .Lx319_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx319_6
.Lx319_5:               movq             xmm1, rdi
.Lx319_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 480], 5
                        mov              qword ptr [rsp + 488], rax
.Lx319_7:                                                                     jmp   n125_assign_var_α
.Lx319_0:               mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n126_var_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_var_α:      mov              r11, 126
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n126_var_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 360], rax;          jmp   n127_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_field_var_α:       mov              r11, 128
                        mov              rdi, qword ptr [rip + .Lx323_0]
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n132_var_ref_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n128_deref_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n128_deref_α:           mov              r11, 129
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n132_var_ref_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n130_binop_α
.Lx325_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n130_binop_α:           mov              r11, 131
                        mov              eax, dword ptr [rsp + 400]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx326_2
                        mov              rax, qword ptr [rsp + 408]
                        mov              rdx, 20
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx326_7
.Lx326_2:               and              edx, 1;                              jz    .Lx326_0
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdi, 20
                        cmp              al, 5;                               je    .Lx326_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx326_4
.Lx326_3:               movq             xmm0, rsi
.Lx326_4:               cmp              cl, 5;                               je    .Lx326_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx326_6
.Lx326_5:               movq             xmm1, rdi
.Lx326_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx326_7:                                                                     jmp   n131_assign_var_α
.Lx326_0:               mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n132_var_ref_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_var_α:      mov              r11, 132
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n132_var_ref_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n133_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n133_iterate_α:         mov              r11, 134
                        mov              qword ptr [rsp + 240], 0
.Lx331_0:               mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              rax, 104;                            je    n138_lit_string_α
                                                                              jmp   n134_deref_α
n133_iterate_β:         mov              r11, 134
                        inc              qword ptr [rsp + 240];               jmp   .Lx331_0
#-----------------------------------------------------------------------------------------------------------------------
n134_deref_α:           mov              r11, 135
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n138_lit_string_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n136_binop_α
.Lx333_0:               .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           mov              r11, 137
                        mov              eax, dword ptr [rsp + 304]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx334_2
                        mov              rax, qword ptr [rsp + 312]
                        mov              rdx, 70
                        add              rax, rdx
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax;          jmp   .Lx334_7
.Lx334_2:               and              edx, 1;                              jz    .Lx334_0
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdi, 70
                        cmp              al, 5;                               je    .Lx334_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx334_4
.Lx334_3:               movq             xmm0, rsi
.Lx334_4:               cmp              cl, 5;                               je    .Lx334_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx334_6
.Lx334_5:               movq             xmm1, rdi
.Lx334_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 288], 5
                        mov              qword ptr [rsp + 296], rax
.Lx334_7:                                                                     jmp   n137_assign_var_α
.Lx334_0:               mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n138_lit_string_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_var_α:      mov              r11, 138
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n138_lit_string_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n133_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n139_disjunction_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:     mov              r11, 140
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n144_var_α
n139_disjunction_as:    mov              r11, 140
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx338_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n140_call_builtin_icon_α
.Lx338_0:               cmp              eax, 1;                              jne   .Lx338_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax;           jmp   n140_call_builtin_icon_α
.Lx338_1:               cmp              eax, 2;                              jne   .Lx338_2
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 88], rax;           jmp   n140_call_builtin_icon_α
.Lx338_2:                                                                     jmp   n140_call_builtin_icon_α
n139_disjunction_β:     mov              r11, 140
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n145_iterate_β
                        cmp              eax, 1;                              je    n143_iterate_β
                                                                              jmp   n139_disjunction_af
n139_disjunction_af:    mov              r11, 140
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n142_var_α
                        cmp              eax, 2;                              je    n141_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn340:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n139_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_disjunction_β
n140_call_builtin_icon_β:
                        mov              r11, 141;                            jmp   n139_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n139_disjunction_as
n141_lit_string_β:      mov              r11, 142;                            jmp   n139_disjunction_af
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              r11, 143
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 200], rax;          jmp   n143_iterate_α
n142_var_β:             mov              r11, 143;                            jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_iterate_α:         mov              r11, 144
                        mov              qword ptr [rsp + 176], 0
.Lx345_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              rax, 104;                            je    n139_disjunction_af
                                                                              jmp   n139_disjunction_as
n143_iterate_β:         mov              r11, 144
                        inc              qword ptr [rsp + 176];               jmp   .Lx345_0
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 152], rax;          jmp   n145_iterate_α
n144_var_β:             mov              r11, 145;                            jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n145_iterate_α:         mov              r11, 146
                        mov              qword ptr [rsp + 128], 0
.Lx349_0:               mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              rax, 104;                            je    n139_disjunction_af
                                                                              jmp   n139_disjunction_as
n145_iterate_β:         mov              r11, 146
                        inc              qword ptr [rsp + 128];               jmp   .Lx349_0
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
.Lclassspec0:           .string          "simple(f)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "rec(f1,f2)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
